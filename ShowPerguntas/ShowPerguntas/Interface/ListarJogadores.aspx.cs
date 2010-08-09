using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class ListarJogadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Voltar(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/GerenciadorJogadores.aspx");
        }

        protected void SelecionarJogador(object sender, EventArgs e)
        {
            Session["id"] = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            Response.Redirect("~/Interface/Perfil.aspx");
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            if (Buscar.Text != "")
            {
                ShowPerguntas.Where = "it.IdUsuario > 0 and it.nome like '%" + Buscar.Text + "%'";
            }
        }

        protected void Limpar_Click(object sender, EventArgs e)
        {
            ShowPerguntas.Where = "it.IdUsuario > 0";
        }
    }
}