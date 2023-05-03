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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }
        private post[] p = new post[100];
        private int npost , npost2 = 0,dem=0;
        String username,password;
        String avatar;
        String st1, st2, st3, st4 = "";
        public Form3(String s1,String s6,String s2, String s5,String s7)
        {
            InitializeComponent();
            this.username = s1;
            Program.image_avartar = s5;
            pictureBox1.Image = Image.FromFile(s5);
            this.password = s2;
            this.guna2Button1.Text = this.username;
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from post"+s7, cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    st1 = oReader["username"].ToString().Trim();
                    st2 = oReader["texts"].ToString().Trim();
                    st3 = oReader["images"].ToString().Trim();
                    st4 = oReader["time_post"].ToString().Trim();
                    p[npost] = new post(st1, st2, st3, st4);
                    npost++;
                }
                npost2 = npost-1;
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            label1.Text = st1;
            label2.Text = st2;
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from account", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    String u1 = oReader["username"].ToString().Trim();
                    if (u1 == st1)
                    {
                        this.avatar = oReader["avartar"].ToString().Trim();
                        pictureBox2.Image = Image.FromFile(oReader["avartar"].ToString().Trim());
                        break;
                    }
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            if (st3 != "")
            {
                pictureBox3.Image = Image.FromFile(st3);
                pictureBox3.Visible = true;
            }
            else pictureBox3.Visible = false;
            label3.Text = st4;
            pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/" + check_tuong_tac1(label3.Text) + ".png");
            linkLabel1.Text = "Có " + tong_tuong_tac(st4) + " người đã tương tác bài viết này";
            int check = checkfriend(this.username, label1.Text);
            if (check==0)
            {
                pictureBox16.Visible = false;
            }else if (check==2)
            {
                pictureBox16.Image = Image.FromFile("C:/Users/Administrator/Pictures/cancel_friend.png");
            }
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from comment", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    String u1 = oReader["time_post"].ToString().Trim();
                    String u2 = oReader["texts"].ToString().Trim();
                    if (u1==label3.Text)
                    {
                        String u3 = oReader["username"].ToString().Trim();
                        Label mylab = new Label();
                        mylab.AutoSize = true;
                        dem++;
                        mylab.Text = u3+":"+u2;
                        mylab.Location=new Point(5,15*dem);
                        this.panel2.Controls.Add(mylab);
                    }
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            

        }
        private void label1_Click(object sender, EventArgs e)
        {

        }
        private int tong_tuong_tac(String time_post)
        {
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            int kq = 0;
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from post", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                  
                    String st4 = oReader["time_post"].ToString().Trim();
                    if (st4==time_post)
                    {
                        int kq1 = Int32.Parse(oReader["likes"].ToString().Trim());
                        int kq2 = Int32.Parse(oReader["haha"].ToString().Trim());
                        int kq3 = Int32.Parse(oReader["sad"].ToString().Trim());
                        int kq4 = Int32.Parse(oReader["wow"].ToString().Trim());
                        int kq5 = Int32.Parse(oReader["heart"].ToString().Trim());
                        int kq6 = Int32.Parse(oReader["angry"].ToString().Trim());
                        kq = kq1 + kq2 + kq3 + kq4 + kq5 + kq6;
                    }
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            return kq;
        }
        private String check_tuong_tac1(String time)
        {
            String kq = "unlike";
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from tuongtac", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    String u1 = oReader["username"].ToString().Trim();
                    String t1 = oReader["time_post"].ToString().Trim();
                    if (u1 == this.username && t1 == time)
                    {
                        kq = oReader["react"].ToString().Trim();
                        break;
                    }
                   
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            return kq;

        }
        private void button1_MouseHover(object sender, EventArgs e)
        {

        }

        private void pictureBox4_MouseHover(object sender, EventArgs e)
        {
            pictureBox5.Visible = true;
            pictureBox6.Visible = true;
            pictureBox7.Visible = true;
            pictureBox8.Visible = true;
            pictureBox9.Visible = true;
            pictureBox10.Visible = true;
        }
        private void set_visible_false()
        {
            pictureBox5.Visible = false;
            pictureBox6.Visible = false;
            pictureBox7.Visible = false;
            pictureBox8.Visible = false;
            pictureBox9.Visible = false;
            pictureBox10.Visible = false;
        }
        private void pictureBox4_MouseLeave(object sender, EventArgs e)
        {
            
            
        }
        private int check_tuong_tac(String k)
        {
            int kt = 0;
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("Select * from tuongtac", cnn);
                SqlDataReader oReader = cmd.ExecuteReader();
                while (oReader.Read())
                {
                    String u1 = oReader["username"].ToString().Trim();
                    String t1 = oReader["time_post"].ToString().Trim();
                    String r1 = oReader["react"].ToString().Trim();
                    if (u1==this.username && t1==label3.Text && k==r1)
                    {
                        kt = 1;
                        break;
                    }
                    else if (u1 == this.username && t1 == label3.Text && k != r1)
                    {
                        kt = 2;
                        break;
                    }
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
            return kt;
        }
        private void pictureBox5_Click(object sender, EventArgs e)
        {
            set_visible_false();
            String s3="likes";
            pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/likes.png");
            if (check_tuong_tac(s3)==0)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into tuongtac values('" + this.username + "','" + label3.Text + "','"+s3+"')";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text+"'";
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
            } else if (check_tuong_tac(s3) == 2)
            {
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
                        if (s1==this.username && s2== label3.Text)
                        {
                            s4= oReader["react"].ToString().Trim();
                            break;
                        }

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                String s = "update post set " + s4 + "= " + s4 + "-1 where time_post='" + label3.Text + "'";
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
                s = "update tuongtac set react ='" + s3 + "' where time_post='" + label3.Text + "' and username='"+this.username+"'";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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

            }
            linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";


        }

        private void pictureBox6_Click(object sender, EventArgs e)
        {
            set_visible_false();
            String s3 = "heart";
            pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/"+s3+".png");
            if (check_tuong_tac(s3) == 0)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into tuongtac values('" + this.username + "','" + label3.Text + "','" + s3 + "')";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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
            }
            else if (check_tuong_tac(s3) == 2)
            {
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
                        if (s1 == this.username && s2 == label3.Text)
                        {
                            s4 = oReader["react"].ToString().Trim();
                            break;
                        }

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                String s = "update post set " + s4 + "= " + s4 + "-1 where time_post='" + label3.Text + "'";
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
                s = "update tuongtac set react ='" + s3 + "' where time_post='" + label3.Text + "' and username='" + this.username + "'";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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

            }
            linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            set_visible_false();
            String kq= check_tuong_tac1(label3.Text);
            Connectsql sql = new Connectsql();
            SqlConnection cnn = sql.setdata();
            if (kq!="unlike")
            {
                pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/unlike.png");
               
                try
                {
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand("Delete from tuongtac where username='"+this.username+"' and time_post='"+label3.Text+"'", cnn);
                    SqlDataReader oReader = cmd.ExecuteReader();
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                String s = "update post set " + kq + "= " + kq + "-1 where time_post='" + label3.Text + "'";
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
                linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
            }

        }

        private void pictureBox7_Click(object sender, EventArgs e)
        {
            set_visible_false();
            String s3 = "haha";
            pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/" + s3 + ".png");
            if (check_tuong_tac(s3) == 0)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into tuongtac values('" + this.username + "','" + label3.Text + "','" + s3 + "')";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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
            }
            else if (check_tuong_tac(s3) == 2)
            {
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
                        if (s1 == this.username && s2 == label3.Text)
                        {
                            s4 = oReader["react"].ToString().Trim();
                            break;
                        }

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                String s = "update post set " + s4 + "= " + s4 + "-1 where time_post='" + label3.Text + "'";
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
                s = "update tuongtac set react ='" + s3 + "' where time_post='" + label3.Text + "' and username='" + this.username + "'";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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

            }
            linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
        }

        private void pictureBox8_Click(object sender, EventArgs e)
        {
            set_visible_false();
            String s3 = "wow";
            pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/" + s3 + ".png");
            if (check_tuong_tac(s3) == 0)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into tuongtac values('" + this.username + "','" + label3.Text + "','" + s3 + "')";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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
            }
            else if (check_tuong_tac(s3) == 2)
            {
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
                        if (s1 == this.username && s2 == label3.Text)
                        {
                            s4 = oReader["react"].ToString().Trim();
                            break;
                        }

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                String s = "update post set " + s4 + "= " + s4 + "-1 where time_post='" + label3.Text + "'";
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
                s = "update tuongtac set react ='" + s3 + "' where time_post='" + label3.Text + "' and username='" + this.username + "'";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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

            }
            linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
        }

        private void pictureBox9_Click(object sender, EventArgs e)
        {
            set_visible_false();
            String s3 = "sad";
            pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/" + s3 + ".png");
            if (check_tuong_tac(s3) == 0)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into tuongtac values('" + this.username + "','" + label3.Text + "','" + s3 + "')";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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
            }
            else if (check_tuong_tac(s3) == 2)
            {
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
                        if (s1 == this.username && s2 == label3.Text)
                        {
                            s4 = oReader["react"].ToString().Trim();
                            break;
                        }

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                String s = "update post set " + s4 + "= " + s4 + "-1 where time_post='" + label3.Text + "'";
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
                s = "update tuongtac set react ='" + s3 + "' where time_post='" + label3.Text + "' and username='" + this.username + "'";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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

            }
            linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
        }

        private void pictureBox10_Click(object sender, EventArgs e)
        {
            set_visible_false();
            String s3 = "angry";
            pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/" + s3 + ".png");
            if (check_tuong_tac(s3) == 0)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into tuongtac values('" + this.username + "','" + label3.Text + "','" + s3 + "')";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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
            }
            else if (check_tuong_tac(s3) == 2)
            {
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
                        if (s1 == this.username && s2 == label3.Text)
                        {
                            s4 = oReader["react"].ToString().Trim();
                            break;
                        }

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                String s = "update post set " + s4 + "= " + s4 + "-1 where time_post='" + label3.Text + "'";
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
                s = "update tuongtac set react ='" + s3 + "' where time_post='" + label3.Text + "' and username='" + this.username + "'";
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
                s = "update post set " + s3 + "= " + s3 + "+1 where time_post='" + label3.Text + "'";
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

            }
            linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Form5 f5 = new Form5(label3.Text);
            f5.ShowDialog();
        }

        private void pictureBox12_Click(object sender, EventArgs e)
        {
            if (npost2>0)
            {
                npost2--;
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
                        if (p[npost2].username == u1)
                        {
                            label1.Text = u1;
                            pictureBox2.Image = Image.FromFile(oReader["avartar"].ToString().Trim());
                            break;
                        }
                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
                
                label2.Text = p[npost2].texts;
                label3.Text = p[npost2].time_post;
                if (p[npost2].images != "")
                {
                    pictureBox3.Visible = true;
                    pictureBox3.Image = Image.FromFile(p[npost2].images);
                }
                else pictureBox3.Visible = false;
                pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/"+check_tuong_tac1(p[npost2].time_post)+".png");
                linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
                panel2.Controls.Clear();
                dem = 0;
                int check = checkfriend(this.username, label1.Text);
                if (check == 0)
                {
                    pictureBox16.Visible = false;
                }
                else if (check == 2)
                {
                    pictureBox16.Visible = true;
                    pictureBox16.Image = Image.FromFile("C:/Users/Administrator/Pictures/cancel_friend.png");
                }
                else if (check == 1)
                {
                    pictureBox16.Visible = true;
                    pictureBox16.Image = Image.FromFile("C:/Users/Administrator/Pictures/add_friend.png");
                }
                try
                {
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand("Select * from comment", cnn);
                    SqlDataReader oReader = cmd.ExecuteReader();
                    while (oReader.Read())
                    {
                        String u1 = oReader["time_post"].ToString().Trim();
                        String u2 = oReader["texts"].ToString().Trim();
                        if (u1 == label3.Text)
                        {
                            String u3 = oReader["username"].ToString().Trim();
                            Label mylab = new Label();
                            mylab.AutoSize = true;
                            dem++;
                            mylab.Text = u3 + ":" + u2;
                            mylab.Location = new Point(5, 15 * dem);
                            this.panel2.Controls.Add(mylab);
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

        private void bunifuTextbox1_OnTextChange(object sender, EventArgs e)
        {

        }

        private void pictureBox13_Click(object sender, EventArgs e)
        {
            if (bunifuTextbox1.text!="")
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into comment values('" + this.username + "','" + label3.Text + "',N'" + bunifuTextbox1.text + "')";
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
                Label mylab = new Label();
                dem++;
                mylab.AutoSize = true;
                mylab.Text = this.username + ":" + bunifuTextbox1.text;
                mylab.Location = new Point(5, 15 * dem);
                panel2.Controls.Add(mylab);
                this.bunifuTextbox1.text = "";
            }
        }
        private String []comment_text = new String[100];
        private String[] comment_user = new string[100];

        private void button2_Click(object sender, EventArgs e)
        {
            pictureBox13.Visible = true;
            bunifuTextbox1.Visible = true;
            panel2.Visible = true;
            
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Form6 f6 = new Form6(this.username,Program.image_avartar);
            f6.ShowDialog();
        }

        private void pictureBox15_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login f1 = new Login();
            f1.Closed += (s, args) => this.Close();
            f1.Show();

        }

        private void label1_Click_1(object sender, EventArgs e)
        {
            this.Hide();
            Form3 f3 = new Form3(this.username, "", this.password, Program.image_avartar, " where username='"+this.label1.Text+"'");
            f3.Closed += (s, args) => this.Close();
            f3.Show();
        }

        private void pictureBox14_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form3 f3 = new Form3(this.username, "", this.password,Program.image_avartar,"" );
            f3.Closed += (s, args) => this.Close();
            f3.Show();
        }

        private void pictureBox16_Click(object sender, EventArgs e)
        {
            int check = checkfriend(this.username, label1.Text);
            if (check==2)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "Delete from friend where username1 = '"+this.username+"' and username2='"+ label1.Text+"' or username1='"+label1.Text+"' and username2='"+this.username+"'";
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
                pictureBox16.Image = Image.FromFile("C:/Users/Administrator/Pictures/add_friend.png");

            } else if (check==1)
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                String s = "insert into friend values('" + this.username + "','" + label1.Text + "',0)";
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
                pictureBox16.Image = Image.FromFile("C:/Users/Administrator/Pictures/cancel_friend.png");
                
            }    
        }

        private void bunifuFlatButton1_Click(object sender, EventArgs e)
        {
            Form7 f7 = new Form7(this.username);
            f7.ShowDialog();
        }

        private void bunifuFlatButton2_Click(object sender, EventArgs e)
        {
            Form8 f8 = new Form8(this.username);
            f8.ShowDialog();
        }

        private int comment = 0;
        private void pictureBox11_Click(object sender, EventArgs e)
        {
            if (npost2<npost-1)
            {
                npost2++;
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
                        
                        if (p[npost2].username == u1)
                        {
                            label1.Text = u1;
                            pictureBox2.Image = Image.FromFile(oReader["avartar"].ToString().Trim());
                            break;
                        }
                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }

                label2.Text = p[npost2].texts;
                label3.Text = p[npost2].time_post;
                if (p[npost2].images != "")
                {
                    pictureBox3.Visible = true;
                    pictureBox3.Image = Image.FromFile(p[npost2].images);
                }
                else pictureBox3.Visible = false;
                pictureBox4.Image = Image.FromFile("C:/Users/Administrator/Pictures/" + check_tuong_tac1(p[npost2].time_post) + ".png");
                linkLabel1.Text = "Có " + tong_tuong_tac(label3.Text) + " người đã tương tác bài viết này";
                panel2.Controls.Clear();
                dem = 0;
                int check = checkfriend(this.username, label1.Text);
                if (check == 0)
                {
                    pictureBox16.Visible = false;
                }
                else if (check == 2)
                {
                    pictureBox16.Visible = true;
                    pictureBox16.Image = Image.FromFile("C:/Users/Administrator/Pictures/cancel_friend.png");
                } else if (check==1)
                {
                    pictureBox16.Visible = true;
                    pictureBox16.Image = Image.FromFile("C:/Users/Administrator/Pictures/add_friend.png");
                }
                try
                {
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand("Select * from comment", cnn);
                    SqlDataReader oReader = cmd.ExecuteReader();
                    while (oReader.Read())
                    {
                        String u1 = oReader["time_post"].ToString().Trim();
                        String u2 = oReader["texts"].ToString().Trim();
                        if (u1 == label3.Text)
                        {
                            String u3 = oReader["username"].ToString().Trim();
                            Label mylab = new Label();
                            mylab.AutoSize = true;
                            dem++;
                            mylab.Text = u3 + ":" + u2;
                            mylab.Location = new Point(60, 15 * dem);
                            this.panel2.Controls.Add(mylab);
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

        private void status_textbox_OnTextChange(object sender, EventArgs e)
        {
         
        }

        private void status_textbox_Click(object sender, EventArgs e)
        {
            
            
        }

        private void status_textbox_MouseClick(object sender, MouseEventArgs e)
        {
           
            Form4 f4 = new Form4(username, Program.image_avartar);
            f4.Show();
        }
        int checkfriend(String username1,String username2)
        {
            
            if (username2== this.username)
            return 0;
            else
            {
                Connectsql sql = new Connectsql();
                SqlConnection cnn = sql.setdata();
                try
                {
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand("Select * from friend", cnn);
                    SqlDataReader oReader = cmd.ExecuteReader();
                    while (oReader.Read())
                    {
                        String u1 = oReader["username1"].ToString().Trim();
                        String u2 = oReader["username2"].ToString().Trim();
                        if ((u1 == username1 && u2 == username2) || (u1==username2 && u2==username1))
                        {
                            return 2;
                        }
                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Can not open connection ! ");
                }
            }
            return 1;
        }
    }
}
