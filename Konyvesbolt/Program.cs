using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Konyvesbolt
{
    static class Program
    {
        static public ujadat ujadat = null;
      
        static public Form1 form1 = null;
        static public torol torol = null;
        static public Szerkesztes szerk = null;
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            ujadat = new ujadat();
            form1 = new Form1();
           
            torol = new torol();
            szerk = new Szerkesztes();
            Application.Run(new Form1());
        }
    }
}
