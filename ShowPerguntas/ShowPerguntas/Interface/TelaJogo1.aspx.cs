using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo1 : System.Web.UI.Page
    {

        public Negocio.Partida partida;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Talvez nao precise desta pagina... Depois a gente ve";
            partida = (Negocio.Partida) Session["partida"];
            
            Label2.Text = partida.pontuacao.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("~/Interface/TelaJogo2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            partida.pararPartida();
            Server.Transfer("~/Interface/TelaJogo3.aspx");
        }
    }
}