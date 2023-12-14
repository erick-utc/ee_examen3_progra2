using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Examen3.Classes
{
    public class Conexion
    {
        public static SqlConnection getConnection()
        {
            string cnxStr = ConfigurationManager.ConnectionStrings["cnxExamen"].ConnectionString;
            SqlConnection cnx = new SqlConnection(cnxStr);
            cnx.Open();

            return cnx;
        }

        public static void closeConnection(SqlConnection cnx)
        {
            cnx.Close();
        }
    }
}