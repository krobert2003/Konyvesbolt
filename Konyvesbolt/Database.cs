using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace Konyvesbolt
{

    public static class Database
    {

        public static MySqlConnection Connection { get; private set; }

        public static void Init()
        {
            MySqlConnectionStringBuilder builder = new MySqlConnectionStringBuilder();
            builder.Server = "localhost";
            builder.UserID = "root";
            builder.Password = "";
            builder.Database = "konyvesbolt_kesz";
            Connection = new MySqlConnection(builder.ConnectionString);

        }
    }
}
