using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Konyvesbolt
{
    public partial class ujadat : Form
    {
        MySqlConnection conn = new MySqlConnection();
        MySqlCommand cmd = new MySqlCommand();
        public ujadat()
        {
            InitializeComponent();
            Database.Init();
        }

        private void ujadat_Load(object sender, EventArgs e)
        {
            try
            {
              
                cmd = Database.Connection.CreateCommand();
            }
            catch (MySqlException ex)
            {

                MessageBox.Show(ex.Message,Environment.NewLine+"A program leáll");
            }
            finally
            {
                Database.Connection.Close();
            }
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            if (string.IsNullOrEmpty(textBox1.Text))
            {
                MessageBox.Show("Üresen hagyott szező mező!!");
                textBox1.Focus();
                return;
            }
            if (string.IsNullOrEmpty(textBox2.Text))
            {
                MessageBox.Show("Üresen hagyott könyv mező!!");
                textBox1.Focus();
                return;
            }
            if (string.IsNullOrEmpty(textBox3.Text))
            {
                MessageBox.Show("Üresen hagyott kiadásiév mező!!");
                textBox1.Focus();
                return;
            }
            if (string.IsNullOrEmpty(textBox4.Text))
            {
                MessageBox.Show("Üresen hagyott ár mező!!");
                textBox1.Focus();
                return;
            }
            cmd.CommandText = "SELECT MAX(konyvid) FROM konyv";
            cmd.Parameters.Clear();
            Database.Connection.Open();
            object maxId = cmd.ExecuteScalar();
            Database.Connection.Close();

              int konyvid = 1;
            if (maxId != DBNull.Value)
            {
                konyvid = Convert.ToInt32(maxId) + 1;
            }

            cmd.CommandText = "INSERT INTO konyv (konyvid,szerzo,cim,megjelenesi_ev,ar) VALUE ( @konyvid, @szerzo, @cim , @megjelenesi_ev,@ar)";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@konyvid", konyvid);
            cmd.Parameters.AddWithValue("@szerzo", textBox1.Text);
            cmd.Parameters.AddWithValue("@cim", textBox2.Text);
            cmd.Parameters.AddWithValue("@megjelenesi_ev", textBox3.Text);
            cmd.Parameters.AddWithValue("@ar", textBox4.Text);

            Database.Connection.Open();
            try
            {
                if (cmd.ExecuteNonQuery() == 1)
                {
                    MessageBox.Show("Sikeresen rögzítve!");
                    textBox1.Text = "";
                    textBox2.Text = "";
                    textBox3.Text = "";
                    textBox4.Text = "";
                }
                else
                {
                    MessageBox.Show("sikertelen rögzítés!");
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            Database.Connection.Close();
        }

        private void toolStripLabel1_Click(object sender, EventArgs e)
        {
            Program.ujadat.Show();
        }

        private void toolStripLabel1_Click_1(object sender, EventArgs e)
        {
            Form form = new Form1();
            form.Show();
            this.Hide();
        }

        private void toolStripLabel2_Click(object sender, EventArgs e)
        {
            Form torol = new torol();
            torol.Show();
            this.Hide();
        }

        private void toolStripLabel3_Click(object sender, EventArgs e)
        {
            Form szer = new Szerkesztes();
            szer.Show();
            this.Hide();
        }
    }
}
