namespace SearchRobot_pc
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.panel4 = new System.Windows.Forms.Panel();
            this.label_ch5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label_ch1 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label_ch2 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label_ch3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label_ch4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.baud_comboBox = new System.Windows.Forms.ComboBox();
            this.port_comboBox = new System.Windows.Forms.ComboBox();
            this.connect_btn = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label_port = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label_ip = new System.Windows.Forms.Label();
            this.comboBox_port = new System.Windows.Forms.ComboBox();
            this.comboBox_ip = new System.Windows.Forms.ComboBox();
            this.btn_tcp_connect = new System.Windows.Forms.Button();
            this.panel4.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // serialPort1
            // 
            this.serialPort1.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.SerialPort1_DataReceived);
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.label_ch5);
            this.panel4.Controls.Add(this.label6);
            this.panel4.Controls.Add(this.label_ch1);
            this.panel4.Controls.Add(this.label10);
            this.panel4.Controls.Add(this.label_ch2);
            this.panel4.Controls.Add(this.label7);
            this.panel4.Controls.Add(this.label_ch3);
            this.panel4.Controls.Add(this.label5);
            this.panel4.Controls.Add(this.label_ch4);
            this.panel4.Controls.Add(this.label3);
            this.panel4.Location = new System.Drawing.Point(12, 12);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(247, 205);
            this.panel4.TabIndex = 15;
            // 
            // label_ch5
            // 
            this.label_ch5.AutoSize = true;
            this.label_ch5.Cursor = System.Windows.Forms.Cursors.Default;
            this.label_ch5.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label_ch5.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label_ch5.Location = new System.Drawing.Point(131, 170);
            this.label_ch5.Name = "label_ch5";
            this.label_ch5.Size = new System.Drawing.Size(63, 15);
            this.label_ch5.TabIndex = 17;
            this.label_ch5.Text = "Unknown";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label6.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label6.Location = new System.Drawing.Point(45, 170);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(31, 15);
            this.label6.TabIndex = 16;
            this.label6.Text = "Yaw";
            // 
            // label_ch1
            // 
            this.label_ch1.AutoSize = true;
            this.label_ch1.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label_ch1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label_ch1.Location = new System.Drawing.Point(131, 22);
            this.label_ch1.Name = "label_ch1";
            this.label_ch1.Size = new System.Drawing.Size(63, 15);
            this.label_ch1.TabIndex = 15;
            this.label_ch1.Text = "Unknown";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label10.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label10.Location = new System.Drawing.Point(45, 22);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(60, 15);
            this.label10.TabIndex = 14;
            this.label10.Text = "x控制量";
            // 
            // label_ch2
            // 
            this.label_ch2.AutoSize = true;
            this.label_ch2.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label_ch2.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label_ch2.Location = new System.Drawing.Point(131, 57);
            this.label_ch2.Name = "label_ch2";
            this.label_ch2.Size = new System.Drawing.Size(63, 15);
            this.label_ch2.TabIndex = 13;
            this.label_ch2.Text = "Unknown";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label7.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label7.Location = new System.Drawing.Point(45, 57);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(60, 15);
            this.label7.TabIndex = 12;
            this.label7.Text = "y控制量";
            // 
            // label_ch3
            // 
            this.label_ch3.AutoSize = true;
            this.label_ch3.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label_ch3.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label_ch3.Location = new System.Drawing.Point(131, 94);
            this.label_ch3.Name = "label_ch3";
            this.label_ch3.Size = new System.Drawing.Size(63, 15);
            this.label_ch3.TabIndex = 11;
            this.label_ch3.Text = "Unknown";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label5.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label5.Location = new System.Drawing.Point(45, 94);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(60, 15);
            this.label5.TabIndex = 10;
            this.label5.Text = "r控制量";
            // 
            // label_ch4
            // 
            this.label_ch4.AutoSize = true;
            this.label_ch4.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label_ch4.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label_ch4.Location = new System.Drawing.Point(131, 131);
            this.label_ch4.Name = "label_ch4";
            this.label_ch4.Size = new System.Drawing.Size(63, 15);
            this.label_ch4.TabIndex = 9;
            this.label_ch4.Text = "Unknown";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label3.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label3.Location = new System.Drawing.Point(45, 131);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(47, 15);
            this.label3.TabIndex = 8;
            this.label3.Text = "Pitch";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label9);
            this.panel1.Controls.Add(this.baud_comboBox);
            this.panel1.Controls.Add(this.port_comboBox);
            this.panel1.Controls.Add(this.connect_btn);
            this.panel1.Location = new System.Drawing.Point(12, 223);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(247, 112);
            this.panel1.TabIndex = 16;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label2.Location = new System.Drawing.Point(3, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 15);
            this.label2.TabIndex = 17;
            this.label2.Text = "波特率";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("幼圆", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(3, 69);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(0, 15);
            this.label1.TabIndex = 16;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label9.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label9.Location = new System.Drawing.Point(3, 31);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(52, 15);
            this.label9.TabIndex = 15;
            this.label9.Text = "串口号";
            // 
            // baud_comboBox
            // 
            this.baud_comboBox.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.baud_comboBox.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.baud_comboBox.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.baud_comboBox.FormattingEnabled = true;
            this.baud_comboBox.Items.AddRange(new object[] {
            "110",
            "300",
            "600",
            "1200",
            "2400",
            "4800",
            "9600",
            "14400",
            "19200",
            "38400",
            "56000",
            "57600",
            "115200",
            "256000"});
            this.baud_comboBox.Location = new System.Drawing.Point(73, 66);
            this.baud_comboBox.Name = "baud_comboBox";
            this.baud_comboBox.Size = new System.Drawing.Size(121, 23);
            this.baud_comboBox.TabIndex = 14;
            this.baud_comboBox.Text = "115200";
            // 
            // port_comboBox
            // 
            this.port_comboBox.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.port_comboBox.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.port_comboBox.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.port_comboBox.FormattingEnabled = true;
            this.port_comboBox.Items.AddRange(new object[] {
            ""});
            this.port_comboBox.Location = new System.Drawing.Point(73, 28);
            this.port_comboBox.Name = "port_comboBox";
            this.port_comboBox.Size = new System.Drawing.Size(121, 23);
            this.port_comboBox.TabIndex = 13;
            this.port_comboBox.Text = "COM5";
            this.port_comboBox.SelectedIndexChanged += new System.EventHandler(this.port_refresh);
            // 
            // connect_btn
            // 
            this.connect_btn.BackColor = System.Drawing.Color.Red;
            this.connect_btn.FlatAppearance.BorderColor = System.Drawing.SystemColors.Window;
            this.connect_btn.FlatAppearance.BorderSize = 0;
            this.connect_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.connect_btn.Font = new System.Drawing.Font("幼圆", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.connect_btn.ForeColor = System.Drawing.Color.White;
            this.connect_btn.Location = new System.Drawing.Point(204, 28);
            this.connect_btn.Name = "connect_btn";
            this.connect_btn.Size = new System.Drawing.Size(30, 26);
            this.connect_btn.TabIndex = 12;
            this.connect_btn.Text = "X";
            this.connect_btn.UseVisualStyleBackColor = false;
            this.connect_btn.Click += new System.EventHandler(this.connect_btn_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pictureBox1.Location = new System.Drawing.Point(265, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(505, 426);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 18;
            this.pictureBox1.TabStop = false;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label_port);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.label_ip);
            this.panel2.Controls.Add(this.comboBox_port);
            this.panel2.Controls.Add(this.comboBox_ip);
            this.panel2.Controls.Add(this.btn_tcp_connect);
            this.panel2.Location = new System.Drawing.Point(12, 341);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(247, 97);
            this.panel2.TabIndex = 18;
            // 
            // label_port
            // 
            this.label_port.AutoSize = true;
            this.label_port.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label_port.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label_port.Location = new System.Drawing.Point(3, 51);
            this.label_port.Name = "label_port";
            this.label_port.Size = new System.Drawing.Size(69, 15);
            this.label_port.TabIndex = 17;
            this.label_port.Text = "远端Port";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("幼圆", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label8.ForeColor = System.Drawing.Color.White;
            this.label8.Location = new System.Drawing.Point(3, 69);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(0, 15);
            this.label8.TabIndex = 16;
            // 
            // label_ip
            // 
            this.label_ip.AutoSize = true;
            this.label_ip.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label_ip.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label_ip.Location = new System.Drawing.Point(3, 13);
            this.label_ip.Name = "label_ip";
            this.label_ip.Size = new System.Drawing.Size(53, 15);
            this.label_ip.TabIndex = 15;
            this.label_ip.Text = "远端IP";
            // 
            // comboBox_port
            // 
            this.comboBox_port.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.comboBox_port.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.comboBox_port.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.comboBox_port.FormattingEnabled = true;
            this.comboBox_port.Items.AddRange(new object[] {
            "110",
            "300",
            "600",
            "1200",
            "2400",
            "4800",
            "9600",
            "14400",
            "19200",
            "38400",
            "56000",
            "57600",
            "115200",
            "256000"});
            this.comboBox_port.Location = new System.Drawing.Point(73, 48);
            this.comboBox_port.Name = "comboBox_port";
            this.comboBox_port.Size = new System.Drawing.Size(121, 23);
            this.comboBox_port.TabIndex = 14;
            this.comboBox_port.Text = "8080";
            // 
            // comboBox_ip
            // 
            this.comboBox_ip.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.comboBox_ip.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.comboBox_ip.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.comboBox_ip.FormattingEnabled = true;
            this.comboBox_ip.Items.AddRange(new object[] {
            ""});
            this.comboBox_ip.Location = new System.Drawing.Point(73, 10);
            this.comboBox_ip.Name = "comboBox_ip";
            this.comboBox_ip.Size = new System.Drawing.Size(121, 23);
            this.comboBox_ip.TabIndex = 13;
            this.comboBox_ip.Text = "192.168.1.108";
            // 
            // btn_tcp_connect
            // 
            this.btn_tcp_connect.BackColor = System.Drawing.Color.Red;
            this.btn_tcp_connect.FlatAppearance.BorderColor = System.Drawing.SystemColors.Window;
            this.btn_tcp_connect.FlatAppearance.BorderSize = 0;
            this.btn_tcp_connect.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_tcp_connect.Font = new System.Drawing.Font("幼圆", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btn_tcp_connect.ForeColor = System.Drawing.Color.White;
            this.btn_tcp_connect.Location = new System.Drawing.Point(204, 10);
            this.btn_tcp_connect.Name = "btn_tcp_connect";
            this.btn_tcp_connect.Size = new System.Drawing.Size(30, 26);
            this.btn_tcp_connect.TabIndex = 12;
            this.btn_tcp_connect.Text = "X";
            this.btn_tcp_connect.UseVisualStyleBackColor = false;
            this.btn_tcp_connect.Click += new System.EventHandler(this.btn_tcp_connect_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(782, 450);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label label_ch1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label_ch2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label_ch3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label_ch4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox baud_comboBox;
        private System.Windows.Forms.ComboBox port_comboBox;
        private System.Windows.Forms.Button connect_btn;
        private System.Windows.Forms.Label label_ch5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label_port;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label_ip;
        private System.Windows.Forms.ComboBox comboBox_port;
        private System.Windows.Forms.ComboBox comboBox_ip;
        private System.Windows.Forms.Button btn_tcp_connect;
    }
}

