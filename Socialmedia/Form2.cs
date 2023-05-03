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
    public partial class Register : Form
    {
        public Register()
        {
            InitializeComponent();
            password.PasswordChar = '\u25CF';
            confirmpassword.PasswordChar = '\u25CF';

        }
        //private bool isValid(String s1)
        //{
        //    Connectsql sql = new Connectsql();
        //    SqlConnection cnn = sql.setdata();
        //}
        private void button2_Click(object sender, EventArgs e)
        {
            String s1 = this.username.Text;
            String s2 = this.yourname.Text;
            String s3 = this.password.Text;
            String s4 = this.confirmpassword.Text;
            int kt = 0;
            String s5 = "C:/Users/Administrator/Pictures/username.png";
            if (s1 == "" || s2 == "" || s3 == "" || s4 == "" )
                MessageBox.Show("Vui lòng không để trống thông tin!");
            else
            if (s3==s4)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                try
                {
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand("Select * from account", cnn);
                    SqlDataReader oReader = cmd.ExecuteReader();
                    while (oReader.Read())
                    {
                        String u1 = oReader["username"].ToString().Trim();
                        if (u1 == s1)
                        {
                            kt = 1;
                            break;
                        }
                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                if (kt == 1) MessageBox.Show("Tài khoản đã được đăng kí ! ");
                else
                {
                    String s = "insert into account values('" + s1 + "','" + s3 + "','" + s2 + "','" + s5 + "')";
                    try
                    {
                        cnn.Open();

                        SqlCommand cmd = new SqlCommand("insert into account values('" + s1 + "','" + s3 + "','" + s2 + "','" + s5 + "')", cnn);
                        cmd.ExecuteNonQuery();
                        cnn.Close();
                        MessageBox.Show("Đăng kí thành công");
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Username đã được đăng kí!");

                    }
                }
            } else MessageBox.Show("Mật khẩu và mật khẩu xác nhận không trùng");
        }
    }
}
