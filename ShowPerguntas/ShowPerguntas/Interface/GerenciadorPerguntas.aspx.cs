using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class GerenciadorPerguntas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            verificarUsuario();
        }

        protected void Voltar(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/AdministradorMenu.aspx");
        }

        protected void AdicionarPergunta_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/AdicionarPergunta.aspx");
        }

        protected void ListarPerguntas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/ListarPerguntas.aspx");
        }

        protected void Sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/logout.aspx");
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