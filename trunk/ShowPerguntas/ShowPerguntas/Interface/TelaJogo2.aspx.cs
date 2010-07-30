using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo2 : System.Web.UI.Page
    {
        public String[] perguntaAtr;
        public Negocio.Partida partida;
        protected void Page_Load(object sender, EventArgs e)
        {
            partida = (Negocio.Partida) Session["partida"];
            perguntaAtr = partida.colocarPergunta();
            if (perguntaAtr == null)
            {
                enunciado.Text = "";
                alternativas.Text = "";
            }
            else
            {
                ListItem[] alternativa = new ListItem[5];
                int i;
                enunciado.Text = perguntaAtr[0];
                for (i = 0; i < 5; ++i)
                {
                    alternativa[i] = new ListItem();
                    alternativa[i].Text = perguntaAtr[i + 1];
                    alternativas.Items.Add(alternativa[i]);
                }
            }
        }

        protected void Responder_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/TelaJogo3.aspx");
        }        

    }
}