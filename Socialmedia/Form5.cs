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
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }
        public Form5(String time_post)
        {
            InitializeComponent();
            int likes=0, heart=0, haha=0, wow=0, sad=0, angry = 0;
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            String s4 = "";
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from tuongtac", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    String s1 = oReader["username"].ToString().Trim();
                    String s2 = oReader["time_post"].ToString().Trim();
                    if (s2 == time_post)
                    {
                        int kq = 0;
                        Label mylab = new Label();
                        mylab.Font = new Font("Times New Roman",10,FontStyle.Bold);
                        mylab.Text = s1;

                        s4 = oReader["react"].ToString().Trim();
                        if (s4 == "likes")
                        {
                            likes++;
                            mylab.Location = new Point(30, 160+20*likes);

                        }
                        else if (s4=="heart")
                        {
                            heart++;
                            mylab.Location = new Point(137, 160+ 20 * heart);
                        }
                        else if (s4 == "haha")
                        {
                            haha++;
                            mylab.Location = new Point(238, 160 + 20 * haha);
                        }
                        else if (s4 == "wow")
                        {
                            wow++;
                            mylab.Location = new Point(349, 160 + 20 * wow);
                        }
                        else if (s4 == "sad")
                        {
                            sad++;
                            mylab.Location = new Point(456, 160 + 20 * sad);
                        }
                        else if (s4 == "angry")
                        {
                            angry++;
                            mylab.Location = new Point(559, 160 + 20 * angry);
                        }
                        this.Controls.Add(mylab);

                       
                    }

                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
        }
    }
}
