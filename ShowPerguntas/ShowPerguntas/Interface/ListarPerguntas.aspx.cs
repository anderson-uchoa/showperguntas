using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class ListarPerguntas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            verificarUsuario();
        }

        protected void MudarDificuldade(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[3].Text.Equals("0"))
                    e.Row.Cells[3].Text = "Fácil";
                else if (e.Row.Cells[3].Text.Equals("1"))
                    e.Row.Cells[3].Text = "Médio";
                else if (e.Row.Cells[3].Text.Equals("2"))
                    e.Row.Cells[3].Text = "Difícil";   
            }
        }

        protected void VoltarButton(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/GerenciadorPerguntas.aspx");
        }

        public void Selecionar(object sender, EventArgs e)
        {
            ExibirPergunta.id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            Response.Redirect("~/Interface/ExibirPergunta.aspx");
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