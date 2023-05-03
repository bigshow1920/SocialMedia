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
    public partial class Form8 : Form
    {
        public Form8()
        {
            InitializeComponent();
        }
        private Button[] b = new Button[100];
        private String[] a = new string[100];
        private Label[] mylab = new Label[100];
        private String username;
        private int dem = 0;
        public Form8(String username)
        {
            InitializeComponent();
            this.username = username;
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from friend where accept=1", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    String u1 = oReader["username1"].ToString().Trim();
                    String u2 = oReader["username2"].ToString().Trim();
                    if (u1 == username || u2 == username) 
                    {
                        String st = u1;
                        if (st == username) st = u2;
                        mylab[dem] = new Label();
                        mylab[dem].AutoSize = true;
                        a[dem] = st;
                        
                        mylab[dem].Text = st;
                        mylab[dem].Location = new Point(5, 15+ 50 * dem);
                        mylab[dem].Font = new System.Drawing.Font("Times New Roman", 12, System.Drawing.FontStyle.Bold);
                        this.panel1.Controls.Add(mylab[dem]);
                        dem++;
                        


                    }
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            label1.Text = dem + " Bạn bè";
            for (int i = 0; i < dem; i++)
            {
                b[i] = new Button();
                b[i].Name = "btn" + i;
                
                b[i].Location = new Point(200, 5+ 50 * i);
                b[i].Size = new System.Drawing.Size(35, 35);
                b[i].Text = "Huỷ bạn bè";
               
                
               
                b[i].Click += (sender, args) =>
                {
                   
                    String s = "Delete from friend where username1 = '" + this.username + "' and username2='" + a[i-1] + "' or username1='" + a[i-1] + "' and username2='" + this.username + "'";
                    try
                    {
                        cnn.Open();

                        SqlCommand cmd = new SqlCommand(s, cnn);
                        cmd.ExecuteNonQuery();
                        cnn.Close();
                        
                    }
                    catch (Exception ex)
                    {
                        //MessageBox.Show("Username đã được đăng kí!");
                        MessageBox.Show(s);
                    }
                    this.Close();
                    

                };
                this.panel1.Controls.Add(b[i]);
            }

        }
    }
}
