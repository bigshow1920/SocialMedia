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
    public partial class Login : Form
    {
        EventArgs e;
        public Login()
        {
            InitializeComponent();
            
        }
        String p1 = "";
        private void button2_Click(object sender, EventArgs e)
        {
            Register re = new Register();
            re.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String s1 = this.username.text;
            String s2 = this.password.text;
            String s5 = "";
            String s6 = "";
            bool kt = false;
            if (s1 == "" || s2 == "")
                MessageBox.Show(kt.ToString());
            else
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                try
                {
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand("Select username,password,name,avartar from account", cnn);
                    SqlDataReader oReader = cmd.ExecuteReader();
                    while (oReader.Read())
                    {
                        String s3 = oReader["username"].ToString().Trim();
                        String s4 = oReader["password"].ToString().Trim();
                        if (s1 == s3 && s2 == s4)
                        {
                            kt = true;
                            s5= oReader["avartar"].ToString().Trim();
                            s6= oReader["name"].ToString().Trim();
                            break;
                        }

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                if (kt == true)
                {
                    account a = new account(s1,s6,s2,s5);

                    this.Hide();
                    Form3 f3 = new Form3(s1,s6,s2,s5,"");
                    f3.Closed += (s, args) => this.Close();
                    f3.Show();
                }
                else MessageBox.Show("Tài khoản hoặc mật khẩu không đúng");
            }
           
        }

        private void bunifuMetroTextbox1_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void password_OnTextChange(object sender, EventArgs e)
        {
            
        }

        private void password_KeyPress(object sender, EventArgs e)
        {
           
        }

        private void password_KeyDown(object sender, EventArgs e)
        {

        }
        
        private void Login_KeyDown(object sender, KeyEventArgs e)
        {
            
        }

        private void password_Click(object sender, EventArgs e)
        {
            
        }
    }
}
