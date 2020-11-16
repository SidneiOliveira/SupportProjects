using ControleAUTO.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControleAUTO
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    Response.Redirect("https://localhost:44361/About.aspx");
            //}
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            bool checAdd = false;
            checAdd = AddProduct();

            if (checAdd)
            {
                Response.Redirect("https://localhost:44361/About.aspx");
            }
        }

        protected bool AddProduct()
        {
            if (string.IsNullOrWhiteSpace(TxtNome.Text))
            {
                TxtNome.Focus();
                return false;
            }

            if (string.IsNullOrWhiteSpace(TxtDescricao.Text))
            {
                TxtDescricao.Focus();
                return false;
            }

            decimal cPrice = 0;

            if (string.IsNullOrWhiteSpace(TxtPreco.Text))
            {
                TxtPreco.Focus();
                return false;
            }
            else
            {
                decimal.TryParse(TxtPreco.Text, out cPrice);
            }

            int cQtd = 0;

            if (string.IsNullOrWhiteSpace(TxtQtd.Text))
            {
                TxtQtd.Focus();
                return false;
            }
            else
            {
                int.TryParse(TxtQtd.Text, out cQtd);
            }

            List<Produtos> cLst = (List<Produtos>)Session["ListAtualProdutos"];
            int cCountLst = cLst.Count;
            cCountLst++;

            Produtos produtos = new Produtos()
            {
                Code = cCountLst,
                Nome = TxtNome.Text,
                Descricao = TxtDescricao.Text,
                Preco = cPrice,
                Qtd = cQtd
            };

            cLst.Add(produtos);

            Session["ListAtualProdutos"] = cLst;

            return true;
        }
    }
}