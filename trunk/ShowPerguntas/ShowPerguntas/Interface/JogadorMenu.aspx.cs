using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class JogadorMenu : System.Web.UI.Page    {

        public Negocio.Partida partida;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            partida = new Negocio.Partida();
            partida.novaPartida(0);
            Server.Transfer("~/Interface/TelaJogo1.aspx");
            //Response.Redirect("~/Interface/TelaJogo1.aspx");
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        public Negocio.Partida partidaAtual
        {
            get {
                if (partida != null)
                    return partida;
                else
                    return null;
            }
        }

    }
}