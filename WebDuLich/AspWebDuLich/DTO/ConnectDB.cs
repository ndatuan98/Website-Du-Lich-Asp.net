using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace AspWebDuLich.DTO
{
    public class ConnectDB
    {
        public SqlConnection getConnection()
        {
            return new SqlConnection(@"Data Source=DESKTOP-D5N4DEM\SQLEXPRESS;Initial Catalog=HANOITOURIST;Integrated Security=True");
        }

        public DataTable getTable(string sql)
        {
            SqlConnection con = getConnection();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void ExecutedNonQuery(string sql)
        {
            SqlConnection con = getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand(sql,con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone(); 
        }
    }
}