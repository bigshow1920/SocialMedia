using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Socialmedia
{
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }
        string image="";
        public Form4(String username,String avatar)
        {
            InitializeComponent();
            label1.Text = username;
            pictureBox1.Image = Image.FromFile(avatar);
            
        }
        private int isPicture = 0;
        private void bunifuImageButton1_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog dlg = new OpenFileDialog())
            {
                dlg.Title = "Open Image";
                dlg.Filter = "Image Files (*.bmp;*.jpg;*.jpeg,*.png)|*.BMP;*.JPG;*.JPEG;*.PNG";

                if (dlg.ShowDialog() == DialogResult.OK)
                {
                    
                    pictureBox2.Image = new Bitmap(dlg.FileName);
                    image = dlg.FileName.ToString();
                    isPicture = 1;
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            String s1 = label1.Text;
            String s2 = bunifuMetroTextbox1.Text;
            String s3 = image;
            String s4 = DateTime.Now.ToString();
            String s5 = "";
            String s = "insert into post (username,texts,images,time_post,tag,likes,heart,haha,sad,wow,angry) values (N'" + s1 + "',N'" + s2 + "','" + s3 + "','"+ s4 +"','"+s5+"',0,0,0,0,0,0)";
            try
            {
                cnn.Open();

                SqlCommand cmd = new SqlCommand(s, cnn);
                MessageBox.Show("Đăng bài viết thành công");
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đăng bài viết thất bại");
            }
        }

        private void bunifuMetroTextbox1_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void bunifuMetroTextbox1_MouseClick(object sender, MouseEventArgs e)
        {
            bunifuMetroTextbox1.Text = "";
        }
    }
}
