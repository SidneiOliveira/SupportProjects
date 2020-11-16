using ControleAUTO.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControleAUTO
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListProdResult();
            }
            else
            {
                List<Produtos> lst
                        = Session["ListAtualProdutos"] != null ?
                            (List<Produtos>)Session["ListAtualProdutos"] : new List<Produtos>();

                grdProdResult.DataSource = lst;
            }
        }

        protected void ListProdResult()
        {
            try
            {
                if (Session["ListAtualProdutos"] != null)
                {
                    List<Produtos> lst
                        = Session["ListAtualProdutos"] != null ?
                            (List<Produtos>)Session["ListAtualProdutos"] : new List<Produtos>();

                    grdProdResult.DataSource = lst;
                    grdProdResult.DataBind();
                }
                else
                {
                    List<Produtos> lstProdutos = new List<Produtos>();

                    #region PRODUTOS

                    Produtos item1 = new Produtos
                    {
                        Code = 1,
                        Nome = "Pneu",
                        Descricao = "Conjunto de Pneus Aro '14' PIRELLI",
                        Preco = 350,
                        Qtd = 120
                    };

                    Produtos item2 = new Produtos
                    {
                        Code = 2,
                        Nome = "Óleo de Motor",
                        Descricao = "Óleo de Motor 'LUBRAX'",
                        Preco = 100,
                        Qtd = 300
                    };

                    Produtos item3 = new Produtos
                    {
                        Code = 3,
                        Nome = "Pastilha",
                        Descricao = "Conjunto de Pastilhas de Freio 'MERCEDES'",
                        Preco = 214,
                        Qtd = 80
                    };

                    Produtos item4 = new Produtos
                    {
                        Code = 4,
                        Nome = "Calota",
                        Descricao = "Conjunto de Calotas 'FIAT'",
                        Preco = 190,
                        Qtd = 359
                    };

                    Produtos item5 = new Produtos
                    {
                        Code = 5,
                        Nome = "Suporte Celular",
                        Descricao = "Suporte para Celular Dobrável (até 15)",
                        Preco = 28,
                        Qtd = 420
                    };

                    Produtos item6 = new Produtos
                    {
                        Code = 6,
                        Nome = "Sensor de Ré",
                        Descricao = "Auxiliar de Estacionamento 'POSITRON'",
                        Preco = 403,
                        Qtd = 89
                    };

                    #endregion

                    lstProdutos.Add(item1);
                    lstProdutos.Add(item2);
                    lstProdutos.Add(item3);
                    lstProdutos.Add(item4);
                    lstProdutos.Add(item5);
                    lstProdutos.Add(item6);

                    grdProdResult.DataSource = lstProdutos;
                    grdProdResult.DataBind();

                    Session["ListAtualProdutos"] = lstProdutos;
                }
            }
            catch
            {

            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44361/Contact.aspx");
        }
    }
}