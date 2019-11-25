 /******************** (C) COPYRIGHT 2016 ANO Tech ***************************
 * 作者		 ：匿名科创
 * 文件名  ：ANO_IMU.c
 * 描述    ：姿态解算函数
 * 官网    ：www.anotc.com
 * 淘宝    ：anotc.taobao.com
 * 技术Q群 ：190169595
*****************************************************************************/
#include "IMU.h"
#include "Math.h"
#include "Filter.h"

//#include "ANO_RC.h"



/*参考坐标，定义为ANO坐标*

俯视，机头方向为x正方向
     +x
     |
 +y--|--
     |
		 
*/	

//世界坐标平面XY转平面航向坐标XY
void w2h_2d_trans(float w[VEC_XYZ],float ref_ax[VEC_XYZ],float h[VEC_XYZ])
{
	h[X] =  w[X] *  ref_ax[X]  + w[Y] *ref_ax[Y];
	h[Y] =  w[X] *(-ref_ax[Y]) + w[Y] *ref_ax[X];
	
}
//平面航向坐标XY转世界坐标平面XY
void h2w_2d_trans(float h[VEC_XYZ],float ref_ax[VEC_XYZ],float w[VEC_XYZ])
{
	w[X] = h[X] *ref_ax[X] + h[Y] *(-ref_ax[Y]);
	w[Y] = h[X] *ref_ax[Y] + h[Y] *  ref_ax[X];
	
}

//载体坐标转世界坐标（ANO约定等同与地理坐标）
float att_matrix[3][3]; //必须由姿态解算算出该矩阵  旋转矩阵
void a2w_3d_trans(float a[VEC_XYZ],float w[VEC_XYZ])
{
		for(u8 i = 0;i<3;i++)
		{
			float temp = 0;
			for(u8 j = 0;j<3;j++)
			{
				
				temp += a[j] *att_matrix[i][j];
			}
			w[i] = temp;
		}
}

//float mag_yaw_calculate(float dT,float mag_val[VEC_XYZ],float g_z_vec[VEC_XYZ],float h_mag_val[VEC_XYZ])//
//{

//	vec_3dh_transition(g_z_vec, mag_val, h_mag_val);

//	return (fast_atan2(h_mag_val[Y], h_mag_val[X]) *57.3f) ;// 	
//}
	


//#define USE_MAG
#define USE_LENGTH_LIM



_imu_st imu_data =  {1,0,0,0,
					{0,0,0},
					{0,0,0},
					{0,0,0},
					{0,0,0},
					{0,0,0},
					{0,0,0},
					 0,0,0};

static float vec_err[VEC_XYZ];
static float vec_err_i[VEC_XYZ];
static float q0q1,q0q2,q1q1,q1q3,q2q2,q2q3,q3q3,q1q2,q0q3;//q0q0,			
static float imu_reset_val;		

static u16 reset_cnt;
					 
_imu_state_st imu_state = {1,1,1,1,1,1,1,1};

static float mag_2d_w_vec[2][2] = {{1,0},{1,0}};//地理坐标中，水平面磁场方向恒为南北 (1,0)

float imu_test[3];
void IMU_update(float dT,_imu_state_st *state,float gyr[VEC_XYZ], s32 acc[VEC_XYZ],_imu_st *imu)
{
	
	static float kp_use = 0,ki_use = 0,mkp_use = 0;

	float acc_norm_l,acc_norm_l_recip,q_norm_l;
		
	float acc_norm[VEC_XYZ];

	float d_angle[VEC_XYZ];
	

	/*Z-Y-X欧拉角转方向余弦矩阵
  //Pitch Roll  Yaw 分别对应Φ θ Ψ  
  X轴旋转矩阵
  R（Φ）
  {1      0        0  }
  {0      cosΦ    sinΦ}
  {0     -sinΦ    cosΦ}
  
  Y轴旋转矩阵
  R（θ）
  {cosθ     0        -sinθ}
  {0        1         0   }
  {sinθ     0        cosθ }
  
  Z轴旋转矩阵
  R（θ）
  {cosΨ      sinΨ       0}
  {-sinΨ     cosΨ       0}
  {0          0         1}
  
  由Z-Y-X顺规有:
  载体坐标系到导航坐标系下旋转矩阵R(b2n)
  R(b2n) =R(Ψ)^T*R(θ)^T*R(Φ)^T
  
  R=
  {cosΨ*cosθ     -cosΦ*sinΨ+sinΦ*sinθ*cosΨ        sinΨ*sinΦ+cosΦ*sinθ*cosΨ}
  {cosθ*sinΨ     cosΦ*cosΨ +sinΦ*sinθ*sinΨ       -cosΨ*sinΦ+cosΦ*sinθ*sinΨ}
  {-sinθ          cosθsin Φ                          cosθcosΦ                   }
  
	利用四元数也可以计算出旋转矩阵，且可避免三角函数运算
	*/
//		q0q0 = imu->w * imu->w;			
		q0q1 = imu->w * imu->x;
		q0q2 = imu->w * imu->y;
		q1q1 = imu->x * imu->x;
		q1q3 = imu->x * imu->z;
		q2q2 = imu->y * imu->y;
		q2q3 = imu->y * imu->z;
		q3q3 = imu->z * imu->z;
		q1q2 = imu->x * imu->y;
		q0q3 = imu->w * imu->z;
	
		if(state->obs_en)
		{
			//计算机体坐标下的运动加速度观测量。坐标系为北西天
			for(u8 i = 0;i<3;i++)
			{
				s32 temp = 0;
				for(u8 j = 0;j<3;j++)
				{
					
					temp += imu->obs_acc_w[j] *att_matrix[j][i];//t[i][j] 转置为 t[j][i]
				}
				imu->obs_acc_a[i] = temp;
				
				imu->gra_acc[i] = acc[i] - imu->obs_acc_a[i];
			}
		}
		else
		{
			for(u8 i = 0;i<3;i++)
			{			
				imu->gra_acc[i] = acc[i];
			}
		}
    //
		acc_norm_l_recip = my_sqrt_reciprocal(my_pow(imu->gra_acc[X]) + my_pow(imu->gra_acc[Y]) + my_pow(imu->gra_acc[Z]));
		acc_norm_l = safe_div(1,acc_norm_l_recip,0);
		
		// 加速度计的读数，单位化。
		for(u8 i = 0;i<3;i++)
		{
			acc_norm[i] = imu->gra_acc[i] *acc_norm_l_recip;
		}

		

		
	// 载体坐标下的x方向向量，单位化。
    att_matrix[0][0] = imu->x_vec[X] = 1 - (2*q2q2 + 2*q3q3);
    att_matrix[0][1] = imu->x_vec[Y] = 2*q1q2 - 2*q0q3;
    att_matrix[0][2] = imu->x_vec[Z] = 2*q1q3 + 2*q0q2;
		
	// 载体坐标下的y方向向量，单位化。
    att_matrix[1][0] = imu->y_vec[X] = 2*q1q2 + 2*q0q3;
    att_matrix[1][1] = imu->y_vec[Y] = 1 - (2*q1q1 + 2*q3q3);
    att_matrix[1][2] = imu->y_vec[Z] = 2*q2q3 - 2*q0q1;
		
    // 载体坐标下的z方向向量（等效重力向量、重力加速度向量），单位化。
    att_matrix[2][0] = imu->z_vec[X] = 2*q1q3 - 2*q0q2;
    att_matrix[2][1] = imu->z_vec[Y] = 2*q2q3 + 2*q0q1;
    att_matrix[2][2] = imu->z_vec[Z] = 1 - (2*q1q1 + 2*q2q2);
		
	//水平面方向向量
	float hx_vec_reci = my_sqrt_reciprocal(my_pow(att_matrix[0][0]) + my_pow(att_matrix[1][0]));
	imu->hx_vec[X] = att_matrix[0][0] *hx_vec_reci;
	imu->hx_vec[Y] = att_matrix[1][0] *hx_vec_reci;
	
	
	// 计算载体坐标下的运动加速度。(与姿态解算无关)
		for(u8 i = 0;i<3;i++)
		{
			imu->a_acc[i] = (s32)(acc[i] - 981 *imu->z_vec[i]);
		}
		
    
		//计算世界坐标下的运动加速度。坐标系为北西天
		for(u8 i = 0;i<3;i++)
		{
			s32 temp = 0;
			for(u8 j = 0;j<3;j++)
			{
				
				temp += imu->a_acc[j] *att_matrix[i][j];
			}
			imu->w_acc[i] = temp;
		}
		
		w2h_2d_trans(imu->w_acc,imu_data.hx_vec,imu->h_acc);
		
		
    // 测量值与等效重力向量的叉积（计算向量误差）。
    vec_err[X] =  (acc_norm[Y] * imu->z_vec[Z] - imu->z_vec[Y] * acc_norm[Z]);
    vec_err[Y] = -(acc_norm[X] * imu->z_vec[Z] - imu->z_vec[X] * acc_norm[Z]);
    vec_err[Z] = -(acc_norm[Y] * imu->z_vec[X] - imu->z_vec[Y] * acc_norm[X]);
	
		for(u8 i = 0;i<3;i++)
		{

			#ifdef USE_EST_DEADZONE	
			if(state->G_reset == 0 && state->obs_en == 0)
			{
				vec_err[i] = my_deadzone(vec_err[i],0,imu->gacc_deadzone[i]);
			}
			#endif	

			#ifdef USE_LENGTH_LIM			
			if(acc_norm_l>1060 || acc_norm_l<900)
			{
				vec_err[X] = vec_err[Y] = vec_err[Z] = 0;
			}
			#endif
			//误差积分
			vec_err_i[i] +=  LIMIT(vec_err[i],-0.1f,0.1f) *dT *ki_use;

		
	// 构造增量旋转（含融合纠正）。	
	//    d_angle[X] = (gyr[X] + (vec_err[X]  + vec_err_i[X]) * kp_use - mag_yaw_err *imu->z_vec[X] *kmp_use *RAD_PER_DEG) * dT / 2 ;
	//    d_angle[Y] = (gyr[Y] + (vec_err[Y]  + vec_err_i[Y]) * kp_use - mag_yaw_err *imu->z_vec[Y] *kmp_use *RAD_PER_DEG) * dT / 2 ;
	//    d_angle[Z] = (gyr[Z] + (vec_err[Z]  + vec_err_i[Z]) * kp_use - mag_yaw_err *imu->z_vec[Z] *kmp_use *RAD_PER_DEG) * dT / 2 ;
			
			d_angle[i] = (gyr[i] + (vec_err[i]  + vec_err_i[i]) * kp_use ) * dT / 2 ;
		}
    // 计算姿态。

    imu->w = imu->w            - imu->x*d_angle[X] - imu->y*d_angle[Y] - imu->z*d_angle[Z];
    imu->x = imu->w*d_angle[X] + imu->x            + imu->y*d_angle[Z] - imu->z*d_angle[Y];
    imu->y = imu->w*d_angle[Y] - imu->x*d_angle[Z] + imu->y            + imu->z*d_angle[X];
    imu->z = imu->w*d_angle[Z] + imu->x*d_angle[Y] - imu->y*d_angle[X] + imu->z;
		
		q_norm_l = my_sqrt_reciprocal(imu->w*imu->w + imu->x*imu->x + imu->y*imu->y + imu->z*imu->z);
    imu->w *= q_norm_l;
    imu->x *= q_norm_l;
    imu->y *= q_norm_l;
    imu->z *= q_norm_l;
		
  
  /////////////////////修正开关///////////////////////////		
		if(state->G_fix_en==0)//重力方向修正
		{
			kp_use = 0;//不修正
		}
		else
		{
			if(state->G_reset == 0)//正常修正
			{			
				kp_use = state->gkp;
				ki_use = state->gki;
			}
			else//快速修正，通过增量进行对准
			{
				kp_use = 10.0f;
				ki_use = 0.0f;
//				imu->est_speed_w[X] = imu->est_speed_w[Y] = 0;
//				imu->est_acc_w[X] = imu->est_acc_w[Y] = 0;
//				imu->est_acc_h[X] = imu->est_acc_h[Y] =0;
				
				//计算静态误差是否缩小
//				imu_reset_val += (ABS(vec_err[X]) + ABS(vec_err[Y])) *1000 *dT;
//				imu_reset_val -= 0.01f;
				imu_reset_val = (ABS(vec_err[X]) + ABS(vec_err[Y]));
				
				imu_reset_val = LIMIT(imu_reset_val,0,1.0f);
				
				if((imu_reset_val < 0.05f) && (state->M_reset == 0))
				{
					//计时
					reset_cnt += 2;
					if(reset_cnt>400)
					{
						reset_cnt = 0;
						state->G_reset = 0;//已经对准，清除复位标记
					}
				}
				else
				{
					reset_cnt = 0;
				}
			}
		}
}

static float t_temp;
void calculate_RPY(void)
{
	///////////////////////输出姿态角///////////////////////////////
	
		t_temp = LIMIT(1 - my_pow(att_matrix[2][0]),0,1);
	
		if(ABS(imu_data.z_vec[Z])>0.05f)//避免奇点的运算
		{
			imu_data.pit =  fast_atan2(att_matrix[2][0],my_sqrt(t_temp))*57.30f;
			imu_data.rol =  fast_atan2(att_matrix[2][1], att_matrix[2][2])*57.30f; 
			imu_data.yaw = -fast_atan2(att_matrix[1][0], att_matrix[0][0])*57.30f; 
		}		
}

