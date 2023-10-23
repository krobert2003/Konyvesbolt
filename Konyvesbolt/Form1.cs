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
    public partial class Form1 : Form
    {
        MySqlConnection conn = new MySqlConnection();
        MySqlCommand cmd = new MySqlCommand();
        public Form1()
        {
            InitializeComponent();
            Database.Init();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                Database.Connection.Open();
                cmd = Database.Connection.CreateCommand();
               
            }
            catch (MySqlException ex)
            {

                MessageBox.Show(ex.Message+Environment.NewLine+"A program leáll");
                Environment.Exit(0);
            }
            finally
            {
              
            }
            listBox1_update();

        }

        private void listBox1_update()
        {
            listBox1.Items.Clear();
   
            cmd.CommandText = "SELECT * FROM konyv;";
            using (MySqlDataReader dr = cmd.ExecuteReader())
            {
                while (dr.Read())
                {
                    int konyvid = dr.GetInt32("konyvid");
                    string szerzo = dr.IsDBNull(dr.GetOrdinal("szerzo")) ? "" : dr.GetString("szerzo");
                    string cim = dr.IsDBNull(dr.GetOrdinal("cim")) ? "" : dr.GetString("cim");
                    int megjelenesi_ev = dr.IsDBNull(dr.GetOrdinal("megjelenesi_ev")) ? 0 : dr.GetInt32("megjelenesi_ev");
                    string kiado = dr.IsDBNull(dr.GetOrdinal("kiado")) ? "" : dr.GetString("kiado");
                    string kategoria = dr.IsDBNull(dr.GetOrdinal("kategoria")) ? "" : dr.GetString("kategoria");
                    string nyelv = dr.IsDBNull(dr.GetOrdinal("nyelv")) ? "" : dr.GetString("nyelv");
                    string sorozatcim = dr.IsDBNull(dr.GetOrdinal("sorozatcim")) ? "" : dr.GetString("sorozatcim");
                    string isbn = dr.IsDBNull(dr.GetOrdinal("isbn")) ? "" : dr.GetString("isbn");
                    int ar = dr.IsDBNull(dr.GetOrdinal("ar")) ? 0 : dr.GetInt32("ar");
                    Konyvek k = new Konyvek(konyvid, szerzo, cim, megjelenesi_ev, kiado, kategoria, nyelv, sorozatcim, isbn, ar);
                    listBox1.Items.Add(k);
                }

            }
         
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void toolStripLabel1_Click(object sender, EventArgs e)
        {
           
            Form ujForm = new ujadat();
            ujForm.Show();
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
