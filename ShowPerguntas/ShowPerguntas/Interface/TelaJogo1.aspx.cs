using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo1 : System.Web.UI.Page
    {
        public Partida partida;

        protected void Page_Load(object sender, EventArgs e)
        {
            partida = PreviousPage.partida;
            if (PreviousPage.partida == null)
                Label1.Text = "A partida nao foi inializada direito";
            else    
                Label1.Text = "Talvez nao precise desta pagina... Depois a gente ve";
            
            Label2.Text = partida.pontuacao.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Interface/Responder.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Interface/Responder.aspx");
        }

        public Partida partidaAtual
        {
            get
            {
                if (partida != null)
                    return partida;
                else
                    return null;
            }
        }
    }
}