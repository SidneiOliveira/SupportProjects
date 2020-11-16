using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControleAUTO
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearFields();
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            bool tryLogin = false;
            tryLogin = TryLogin();

            if (tryLogin)
            {
                Response.Redirect("https://localhost:44361/About.aspx");
            }
        }

        protected void btnAlterarSenha_Click(object sender, EventArgs e)
        {

        }

        protected void ClearFields()
        {
            txtLogin.Text = string.Empty;
            txtPassword.Text = string.Empty;
        }

        protected bool TryLogin()
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txtLogin.Text))
                {
                    txtLogin.Focus();
                    return false;
                }

                if (string.IsNullOrWhiteSpace(txtPassword.Text))
                {
                    txtPassword.Focus();
                    return false;
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}