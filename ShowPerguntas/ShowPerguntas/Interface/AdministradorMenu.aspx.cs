using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class AdministradorMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GerenciarPerguntas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/GerenciadorPerguntas.aspx");
        }

        protected void GerenciarJogadores_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/GerenciadorJogadores.aspx");
        }

        protected void GerenciadorRanking_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/GerenciadorRanking.aspx");
        }

        protected void Sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/logout.aspx");
        }
    }
}