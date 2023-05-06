using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BilleteraVirtual_v5.Controllers
{
    public class Tarjeta
    {
        public void SaveTarjeta(m.Tarjeta tarjeta)
        {
            //TO-DO
            s.Database saveTarjeta = new s.Database();
            saveTarjeta.SaveTarjeta(tarjeta);
            //Database Conexion             
        }
    }
}
}