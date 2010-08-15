using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class GerenciadorRanking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            verificarUsuario();
        }

        protected void Voltar(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/AdministradorMenu.aspx");
        }

        protected void Ranking_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/ExibirRanking.aspx");
        }
        public void verificarUsuario()
        {
            String nome = (String)Session["nome"];
            String tipo = (String)Session["tipo"];
            if (tipo == null)
                Response.Redirect("~/Interface/Home.aspx");
            else if (!tipo.Equals("Administrador"))
                Response.Redirect("~/Interface/Home.aspx");
            else if (nome == null)
                Response.Redirect("~/Interface/Home.aspx");

        }
    }
}