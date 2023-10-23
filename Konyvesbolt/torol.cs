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
    public partial class torol : Form
    {
        MySqlConnection conn =new MySqlConnection();
        MySqlCommand cmd = new MySqlCommand();
        public torol()
        {
            InitializeComponent();
            Database.Init();
        }

        private void torol_Load(object sender, EventArgs e)
        {
            try
            {
                Database.Connection.Open();
                cmd = Database.Connection.CreateCommand();
            }
            catch (MySqlException ex)
            {

                MessageBox.Show(ex.Message, Environment.NewLine + " Nincs kapcsolat");
            }
            finally
            {
              
            }
            listBox2_update();

        }

        private void listBox2_update()
        {
            listBox2.Items.Clear();
            cmd.CommandText = "SELECT * FROM konyv";
            using (MySqlDataReader dr = cmd.ExecuteReader())
            {
                while (dr.Read())
                {
                    int konyvid = dr.GetInt32("konyvid");
                    string szerzo = dr.IsDBNull(dr.GetOrdinal("szerzo")) ? "" : dr.GetString("szerzo");
                    string cim = dr.IsDBNull(dr.GetOrdinal("cim")) ? "" : dr.GetString("cim");
                    int megjelenesi_ev = dr.IsDBNull(dr.GetOrdinal("megjelenesi_ev")) ? 0 : dr.GetInt32("megjelenesi_ev");
                    int ar = dr.IsDBNull(dr.GetOrdinal("ar")) ? 0 : dr.GetInt32("ar");
                 
                    Konyvek k = new Konyvek(konyvid,szerzo, cim,megjelenesi_ev,ar);
                    listBox2.Items.Add(k);

                }
            }
        }

        private void toolStripLabel1_Click(object sender, EventArgs e)
        {
            Form form1 = new Form1();
            form1.Show();
            this.Hide();
        }

        private void toolStripLabel2_Click(object sender, EventArgs e)
        {
            Form ujadat = new ujadat();
            ujadat.Show();
            this.Hide();
        }
        private bool katint = false;
        private void listBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!katint)
            {

                katint = true;




                katint = false;
            }
            if (listBox2.SelectedIndex!=-1)
            {
                Konyvek kivalasztas = (Konyvek)listBox2.SelectedItem;
              
                textBox1.Text = kivalasztas.szerzo;
                textBox2.Text = kivalasztas.cim;
             
                numericUpDown2.Minimum = 0;
                numericUpDown2.Maximum = 3000;
                numericUpDown2.Value = kivalasztas.megjelenesi_ev;
                numericUpDown1.Minimum = 0;
                numericUpDown1.Maximum = 100000;
                numericUpDown1.Value = kivalasztas.ar;
                numericUpDown3.Maximum = 1000;
                numericUpDown3.Value = kivalasztas.konyvid;

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "DELETE FROM konyv WHERE konyvid =@konyvid";
            cmd.Parameters.AddWithValue("@konyvid", numericUpDown3.Value);
            cmd.Parameters.AddWithValue("@szerzo", textBox1.Text);
            cmd.Parameters.AddWithValue("@cim", textBox2.Text);
            cmd.Parameters.AddWithValue("@ar", numericUpDown1.Value);
            cmd.Parameters.AddWithValue("@megjelenesi_ev", numericUpDown2.Value);

        
            if (cmd.ExecuteNonQuery() == 1)
            {
                MessageBox.Show("Sikeresen törlés!");
             
                textBox1.Text = "";
                textBox2.Text = "";
                numericUpDown1.Value = 0;
                numericUpDown2.Value = 0;
                numericUpDown3.Value = 0;
                listBox2.Update();

            }
            else
            {
                MessageBox.Show("sikertelen  törlés!");
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void toolStripLabel3_Click(object sender, EventArgs e)
        {
            Form szer = new Szerkesztes();
            szer.Show();
            this.Hide();
        }
    }
}
