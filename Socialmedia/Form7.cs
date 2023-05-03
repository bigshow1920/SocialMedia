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
    public partial class Form7 : Form
    {
        public Form7()
        {
            InitializeComponent();

        }
       private String[] a = new String[100];
        private int dem=0;
        private int j = 0;
        private String username;
        public Form7(String username)
        {
            InitializeComponent();
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            this.username = username;
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from friend where username2='"+username+"' and accept=0", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    String u1 = oReader["username1"].ToString().Trim();
                    a[dem] = u1;
                    dem = dem + 1;
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            j = dem;
            if (j>0)
            {
                label5.Text = a[j-1];
                label5.Visible = true;
                pictureBox1.Visible = true;
                pictureBox2.Visible = true;
            }
            

        }

        private void pictureBox11_Click(object sender, EventArgs e)
        {
            if (j<dem)
            {
                j=j+1;
                label5.Text = a[j-1];
            }
        }

        private void pictureBox12_Click(object sender, EventArgs e)
        {
            if (j>1)
            {

                j = j - 1;
                label5.Text = a[j-1];
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            String s = "update friend set accept =1 where username1='" + label5.Text + "' and username2='"+this.username+"'";
            try
            {
                cnn.Open();

                SqlCommand cmd = new SqlCommand(s, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                MessageBox.Show("Kết bạn thành công");
                this.Close();
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Username đã được đăng kí!");
                MessageBox.Show(s);
            }
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            String s = "delete from friend where username1='" + label5.Text + "' and username2='" + this.username + "'";
            try
            {
                cnn.Open();

                SqlCommand cmd = new SqlCommand(s, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                MessageBox.Show("Hủy lời mời thành công");
                this.Close();
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Username đã được đăng kí!");
                MessageBox.Show(s);
            }
        }
    }
}
