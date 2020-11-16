using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace ControleAUTO.Classes
{
    [Serializable]
    public class Produtos
    {
        public int Code { get; set; }
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public decimal Preco { get; set; }
        public int Qtd { get; set; }
    }
}