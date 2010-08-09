using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class GerenciadorJogadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Voltar(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/AdministradorMenu.aspx");
        }

        protected void ListarJogadores_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/ListarJogadores.aspx");
        }

        protected void Sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/logout.aspx");
        }
    }
}