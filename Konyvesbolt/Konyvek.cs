using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Konyvesbolt
{
    class Konyvek
    {
        public int konyvid;
        public string szerzo;
        public string cim;
        public int megjelenesi_ev;
        public string megjelenes_helye;
        public string kiado;
        public string kategoria;
        public int ar;
        public  string nyelv;
        string sorozatcim;
        string isbn;
       

        public Konyvek(string szerzo, string cim, int megjelenesi_ev, int ar)
        {
            
            this.szerzo = szerzo;
            this.cim = cim;
            this.megjelenesi_ev = megjelenesi_ev;
            this.ar = ar;
           
        }

        public Konyvek(int konyvid, string szerzo, string cim, int megjelenesi_ev, int ar)
        {
            this.konyvid = konyvid;
            this.szerzo = szerzo;
            this.cim = cim;
            this.megjelenesi_ev = megjelenesi_ev;
            this.ar = ar;
        }

        public Konyvek(int konyvid, string szerzo, string cim, int megjelenesi_ev, string kiado, string kategoria, string nyelv, string sorozatcim, string isbn, int ar)
        {
            this.konyvid = konyvid;
            this.szerzo = szerzo;
            this.cim = cim;
            this.megjelenesi_ev = megjelenesi_ev;
            this.kiado = kiado;
            this.kategoria = kategoria;
            this.nyelv = nyelv;
            this.sorozatcim = sorozatcim;
            this.isbn = isbn;
            this.ar = ar;
        }
        public override string ToString()
        {
            return "konyvid: " +konyvid+ "Szerzo: "+szerzo+" Cim: "+cim+"Év: "+megjelenesi_ev+"Ar: "+ar;
        }

    }
}
