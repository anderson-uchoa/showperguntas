using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;

namespace ShowPerguntas.Interface
{
    public partial class JogadorMenu : System.Web.UI.Page    {

        public Negocio.Partida partida;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void novoJogo_Click(object sender, EventArgs e)
        {
            partida = new Negocio.Partida();
            partida.novaPartida(0);
            Session["partida"] = partida;
            Response.Redirect("~/Interface/TelaJogo1.aspx");
            
        }

        protected void mostrarRanking_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/ExibirRanking.aspx");
        }

        protected void BotaoRegrasClick(object sender, EventArgs e)
        {
            Response.Redirect("~/InterfaceAberta/Regras.aspx");
        }

        protected void VisualizarPerfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/Perfil.aspx");
        }

    }
}