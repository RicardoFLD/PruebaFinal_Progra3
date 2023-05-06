using BilleteraVirtual_v5.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

namespace BilleteraVirtual_v5.Database
{
    public class DataTarjetas
    {
            const string database = "Tarjetas";
            const string server = "localhost";
            string cnn = $"Data Source={server};Initial Catalog={database};Integrated Security=True";

            public DataTable GetTarjetas()
            {
                return ExecuteQuery("[dbo].[spgetTarjetas]", null);
            }

            public DataTable GetResort(int id)
            {
                List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@id", id),
            };
                return ExecuteQuery("[dbo].[spgetTarjetas]", param);
            }

            public void SaveTarjeta(m.Book book)
            {
                List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@Foto", Tarjeta.Foto),
                new SqlParameter("@Banco", Tarjeta.Banco),
                new SqlParameter("@Emisor", Tarjeta.Emisor),
                new SqlParameter("@Dueño", Tarjeta.Dueño),
                new SqlParameter("@NumeroTarjeta", Tarjeta.NumeroTarjeta),
                new SqlParameter("@codigoCVV", Tarjeta.codigoCVV),
                new SqlParameter("@fechaExp", Tarjeta.fechaExp),

            };
                ExecuteQuery("[dbo].[spSaveTarjeta]", param);
            }

            public DataTable ExecuteQuery(string storedProcedure, List<SqlParameter> param)
            {
                try
                {
                    DataTable dt = new DataTable();

                    using (SqlConnection connection = new SqlConnection(cnn))
                    {
                        connection.Open();
                        SqlCommand cmd = connection.CreateCommand();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = storedProcedure;
                        if (param != null)
                        {
                            foreach (SqlParameter p in param)
                            {
                                cmd.Parameters.Add(p);
                            }
                        }
                        cmd.ExecuteNonQuery();
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        adapter.Fill(dt);
                    }
                    return dt;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }

}
}