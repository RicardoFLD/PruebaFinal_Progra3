using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BilleteraVirtual_v5.Models
{
    public class Billetera
    {
        public string Foto { get; set; }
        public string Banco { get; set; }
        public string Emisor { get; set; }
        public string Dueño { get; set; }
        public int NumeroTarjeta { get; set; }

        public int codigoCVV { get; set; }

        public DateTime fechaExp { get; set; }

    }
}