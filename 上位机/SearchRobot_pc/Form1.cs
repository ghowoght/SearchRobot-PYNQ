using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using System.IO;
using System.IO.Ports;

namespace SearchRobot_pc
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            TextBox.CheckForIllegalCrossThreadCalls = false;
        }

        Socket udpServer = null;
        private void Form1_Load(object sender, EventArgs e)
        {
            this.Text = GetLocalIPv4Address().ToString();

            port_comboBox.Items.AddRange(System.IO.Ports.SerialPort.GetPortNames());
            port_comboBox.Items.Remove("");

            if (remoteEndPoint == null)
            {
                comboBox_ip.Text = GetLocalIPv4Address().ToString();
            }
            else
            {

            }

            //创建套接字
            udpServer = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
            //绑定IP和端口
            udpServer.Bind(new IPEndPoint(GetLocalIPv4Address(), 8090));
            //开启数据接收线程
            new Thread(ReceiveMessage)
            {
                IsBackground = true
            }.Start();

            Screen[] screens = System.Windows.Forms.Screen.AllScreens;
            if (screens.Length >= 2)
            {

                for (int i = 0; i < screens.Length; i++)
                {
                    //获取扩展屏
                    Screen childerScreen = screens[1];
                    f.Width = childerScreen.Bounds.Width;
                    f.Height = childerScreen.Bounds.Height;
                    f.Location = childerScreen.WorkingArea.Location;

                }

                f.FormBorderStyle = FormBorderStyle.None;
                f.StartPosition = FormStartPosition.Manual;

                pictureBox.Size = f.Size;
                pictureBox.Dock = DockStyle.Fill;
                pictureBox.SizeMode = PictureBoxSizeMode.StretchImage;
                f.Controls.Add(pictureBox);

                f.Show();
            }
        }

        Form f = new Form();
        PictureBox pictureBox = new PictureBox();


        //图像接收线程
        EndPoint remoteEndPoint = null;
        void ReceiveMessage()
        {
            while (true)
            {
                //DateTime beforeDT = System.DateTime.Now;

                remoteEndPoint = new IPEndPoint(IPAddress.Any, 0);
                //设置一个64k的字节数组作为缓存
                byte[] data = new byte[65536];
                int length = udpServer.ReceiveFrom(data, ref remoteEndPoint);//此方法把数据来源ip、port放到第二个参数中

                if (tcpClient == null)
                {
                    comboBox_ip.Text = ((IPEndPoint)remoteEndPoint).Address.ToString();
                }

                MemoryStream ms = new MemoryStream(data, 0, length);
                //显示在PC上
                pictureBox1.Image = Image.FromStream(ms);
                //显示在VR上
                pictureBox.Image = Image.FromStream(ms);

                //计算消耗的时间
                //DateTime afterDT = System.DateTime.Now;
                //TimeSpan ts = afterDT.Subtract(beforeDT);
                //txb.AppendText(ts.TotalMilliseconds + "ms" + "\r\n");

            }
        }

        //获取主机IPv4地址
        public IPAddress GetLocalIPv4Address()
        {
            IPAddress localIpv4 = null;
            //获取本机所有的IP地址列表
            IPAddress[] IpList = Dns.GetHostAddresses(Dns.GetHostName());
            //循环遍历所有IP地址
            foreach (IPAddress IP in IpList)
            {
                //判断是否是IPv4地址
                if (IP.AddressFamily == AddressFamily.InterNetwork)
                {
                    localIpv4 = IP;
                }
                else
                {
                    continue;
                }
            }
            return localIpv4;
        }

               
        private void connect_btn_Click(object sender, EventArgs e)
        {
            if (serialPort1.IsOpen)
            {
                serialPort1.Close();
                connect_btn.Text = "X";
                connect_btn.BackColor = Color.Red;
                baud_comboBox.Enabled = true;
                port_comboBox.Enabled = true;
            }
            else
            {
                try
                {
                    serialPort1.PortName = port_comboBox.Text;
                    serialPort1.BaudRate = Convert.ToInt32(baud_comboBox.Text);
                    serialPort1.DataBits = 8;

                    serialPort1.Open();
                    connect_btn.Text = "〇";
                    connect_btn.BackColor = Color.SpringGreen;
                    baud_comboBox.Enabled = false;
                    port_comboBox.Enabled = false;

                    new Thread(SendMessage)
                    {
                        IsBackground = true
                    }.Start();

                    new Thread(Show_CH_Data)
                    {
                        IsBackground = true
                    }.Start();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        int[] CH = new int[10];
        int[] CH_Ori = new int[10];
        byte[] data_receive = new byte[20];
        int state = 0;
        int cnt = 0;
        private void SerialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            try
            {
                this.Invoke((EventHandler)(delegate
                {

                    int data = serialPort1.ReadByte();
                    if (data == 0xAA && state == 0)
                    {
                        state = 1;
                    }
                    else if (data == 0xBB && state == 1)
                    {
                        
                        state = 2;
                    }
                    else if (state == 2)
                    {
                        data_receive[cnt++] = (byte)data;
                        if(cnt == 12)
                        {
                            
                            for (int i = 0; i < 6; i++)
                            {
                                CH_Ori[i] = (data_receive[2 * i] << 8) | data_receive[2 * i + 1];
                            }
                            CH_Ori[3] = (Int16)CH_Ori[3];
                            CH_Ori[4] = (Int16)CH_Ori[4];
                            int check = CH_Ori[0] + CH_Ori[1] + CH_Ori[2];// + CH_Ori[3] + CH_Ori[4];
                            if (check == CH_Ori[5])
                            {
                                for (int i = 0; i < 5; i++)
                                {
                                    CH[i] = CH_Ori[i];
                                }
                            }

                            state = 0;
                            cnt = 0;
                            //Show_CH_Data();
                            serialPort1.DiscardInBuffer();
                        }
                    }
                }));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

            }
        }

        private void Show_CH_Data()
        {
            while (true)
            {
                try
                {
                    label_ch1.Text = CH[0].ToString();
                    label_ch2.Text = CH[1].ToString();
                    label_ch3.Text = CH[2].ToString();
                    label_ch4.Text = ((float)CH[3] / 100.0f).ToString();
                    label_ch5.Text = ((float)CH[4] / 100.0f).ToString();

                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btn_tcp_connect_Click(object sender, EventArgs e)
        {
            //Parse：将一个字符串的ip地址转换成一个IPAddress对象
            IPAddress ipaddress = IPAddress.Parse(comboBox_ip.Text);
            EndPoint point = new IPEndPoint(ipaddress, int.Parse(comboBox_port.Text));

            Thread connect = new Thread(new ParameterizedThreadStart(Connect));
            connect.Start(point);
        }

        //连接线程
        Socket tcpClient = null;
        private void Connect(object point)
        {
            try
            {
                tcpClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                tcpClient.Connect((EndPoint)point);//通过IP和端口号来定位一个所要连接的服务器端

                btn_tcp_connect.Text = "〇";
                btn_tcp_connect.BackColor = Color.SpringGreen;

                new Thread(SendMessage)
                {
                    IsBackground = true
                }.Start();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void SendMessage()
        {
            while (true)
            {
                try
                {

                    //tcpClient.Send(data_receive);

                    UdpClient udpClient = new UdpClient();
                    IPAddress ipaddress = IPAddress.Parse("192.168.0.107");// (comboBox_ip.Text);//((IPEndPoint)remoteEndPoint).Address;
                    IPEndPoint endpoint = new IPEndPoint(ipaddress, 8070);

                    udpClient.Send(data_receive, data_receive.Length, endpoint);
                    udpClient.Close();

                    Thread.Sleep(20);

                }
                catch(Exception ex)
                {
                    btn_tcp_connect.Text = "X";
                    btn_tcp_connect.BackColor = Color.Red;
                    MessageBox.Show(ex.ToString());
                    break;
                }
            }
        }

        private void port_refresh(object sender, EventArgs e)
        {
            port_comboBox.Items.AddRange(System.IO.Ports.SerialPort.GetPortNames());
        }
    }
}

