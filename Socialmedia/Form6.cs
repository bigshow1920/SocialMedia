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
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }
        public Form6(String username,String image)
        {
            InitializeComponent();
            this.image = image;
            pictureBox1.Image = Image.FromFile(image);
            this.username = username;
        }
        String username;
        String image;
        int isPicture = 0;
        private void bunifuImageButton1_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog dlg = new OpenFileDialog())
            {
                dlg.Title = "Open Image";
                dlg.Filter = "Image Files (*.bmp;*.jpg;*.jpeg,*.png)|*.BMP;*.JPG;*.JPEG;*.PNG";

                if (dlg.ShowDialog() == DialogResult.OK)
                {

                    pictureBox1.Image = new Bitmap(dlg.FileName);
                    image = dlg.FileName.ToString();
                    isPicture = 1;
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            String s3 = image;
            Program.image_avartar = image;
            String s = "update account set avartar='"+image+"' where username='" + this.username + "'";
            try
            {
                cnn.Open();

                SqlCommand cmd = new SqlCommand(s, cnn);
               
                cmd.ExecuteNonQuery();
                MessageBox.Show("Thay avatar thành công");
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(s);
            }
        }
    }
}
