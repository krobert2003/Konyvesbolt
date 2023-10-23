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
    public partial class Szerkesztes : Form
    {
        MySqlConnection conn = new MySqlConnection();
        MySqlCommand cmd = new MySqlCommand();
        public Szerkesztes()
        {
            InitializeComponent();
            Database.Init();
        }

        private void Szerkesztes_Load(object sender, EventArgs e)
        {
            try
            {
                Database.Connection.Open();
                cmd = Database.Connection.CreateCommand();
            }
            catch (MySqlException ex)
            {

                MessageBox.Show(ex.Message, Environment.NewLine + "Nem jó a kapcsolat");
            }
            listBox1_Update();

        }

        private void listBox1_Update()
        {
            listBox1.Items.Clear();
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

                    Konyvek k = new Konyvek(konyvid, szerzo, cim, megjelenesi_ev, ar);
                    listBox1.Items.Add(k);

                }
            }
        }

        private void toolStripLabel1_Click(object sender, EventArgs e)
        {
            Form ujadat = new ujadat();
            ujadat.Show();
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
            Form form1 = new Form1();
            form1.Show();
            this.Hide();
        }
        private bool katint = false;
        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!katint)
            {
                katint = true;


                katint = false;
            }
            if (listBox1.SelectedIndex!=-1)
            {
                Konyvek k = (Konyvek)listBox1.SelectedItem;
                textBox1.Text = k.szerzo;
                textBox2.Text = k.cim;
                numericUpDown1.Maximum = 1000;
                numericUpDown1.Value = k.konyvid;
                numericUpDown2.Maximum = 4000;
                numericUpDown2.Value = k.megjelenesi_ev;
                numericUpDown3.Maximum = 100000;
                numericUpDown3.Value = k.ar;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedItem!=null)
            {
                Konyvek k = (Konyvek)listBox1.SelectedItem;
                cmd.Parameters.Clear();
                cmd.CommandText = "Update konyv SET szerzo=@szerzo, cim=@cim, megjelenesi_ev=@megjelenesi_ev,ar=@ar WHERE konyvid=@konyvid";
                cmd.Parameters.AddWithValue("@konyvid", numericUpDown1.Value);
                cmd.Parameters.AddWithValue("@szerzo", textBox1.Text);
                cmd.Parameters.AddWithValue("@cim", textBox2.Text);
                cmd.Parameters.AddWithValue("@megjelenesi_ev", numericUpDown2.Value);
                cmd.Parameters.AddWithValue("@ar", numericUpDown3.Value);
              

                if (cmd.ExecuteNonQuery() == 1)
                {
                    MessageBox.Show("A módosítás sikeres");
                    textBox1.Text = "";
                    textBox2.Text = "";
                    numericUpDown1.Value = 0;
                    numericUpDown2.Value = 0;
                    numericUpDown3.Value = 0;
                
                  
                }
                else
                {
                    MessageBox.Show("A modosítás sikertelen");
                }
            }
           
        }
    }
}
