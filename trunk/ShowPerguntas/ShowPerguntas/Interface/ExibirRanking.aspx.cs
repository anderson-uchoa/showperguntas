using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class ExibirRanking : System.Web.UI.Page
    {
        public int posicao = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            verificarUsuario();
            if (Session["Tipo"].Equals("Administrador"))
                Zerar.Visible = true;
        }

        public void AtualizarPosicao(object sender, EventArgs e)
        {
            posicao++;
        }

        protected void ZerarRanking_Click(object sender, EventArgs e)
        {
            if(new Ranking().ZerarRanking())
                Response.Redirect("~/Interface/GerenciadorRanking.aspx");
            else
                Response.Redirect("~/Interface/Home.aspx");
        }

        protected void Voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/" + Convert.ToString(Session["Tipo"]) + "Menu.aspx");
        }
        public void verificarUsuario()
        {
            String nome = (String)Session["nome"];
            String tipo = (String)Session["tipo"];
            if (tipo == null)
                Response.Redirect("~/Interface/Home.aspx");
            else if (nome == null)
                Response.Redirect("~/Interface/Home.aspx");

        }
    }
}