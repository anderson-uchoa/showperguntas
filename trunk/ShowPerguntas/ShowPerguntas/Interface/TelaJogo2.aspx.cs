using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;
using System.Timers;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo2 : System.Web.UI.Page
    {
        public String[] perguntaAtr;
        public Partida partida;
        ListItem[] alternativa;
        public String[] estatisticas;
        DateTime tempo;
        int cronometro;

        protected void Page_Load(object sender, EventArgs e)
        {

            partida = (Partida) Session["partida"];
            cronometro = partida.tempo;
            ContadorL.Text = cronometro.ToString();
            tempo = DateTime.Now;
            tempo.AddSeconds(partida.tempo);
            perguntaAtr = partida.colocarPergunta();

            MostrarEstatisticasB.Visible = (new Ajuda()).ajudasRestantes(partida, Defines.ESTAT);
            PularB.Visible = (new Ajuda()).ajudasRestantes (partida, Defines.PULAR);
            RemoverAlternativasB.Visible = (new Ajuda()).ajudasRestantes(partida, Defines.REMOV);
                
            if (perguntaAtr == null)
            {
                enunciado.Text = "";
                alternativas.Text = "";
            }
            else
            {
                alternativa = new ListItem[5];
                int i;
                enunciado.Text = perguntaAtr[0];
                for (i = 0; i < 5; ++i)
                {
                    alternativa[i] = new ListItem();
                    alternativa[i].Text = perguntaAtr[i + 1];
                    if(!IsPostBack)
                        alternativas.Items.Add(alternativa[i]);
                }
            }
        }

        protected void Responder_Click(object sender, EventArgs e)
        {
            int i;

            for (i = 0; i < alternativa.Length; ++i)
            {
                if (alternativa[i].Equals(alternativas.SelectedItem))
                    partida.responder(i);
            }
            
            Response.Redirect("~/Interface/TelaJogo3.aspx");
        }

        protected void MostrarEstatisticas_Click(object sender, EventArgs e)
        {
            estatisticas = (new Ajuda()).mostrarEstatisticas(partida);
            //TODO
        }

        protected void Pular_Click(object sender, EventArgs e)
        {
            (new Ajuda()).pularPergunta(partida);
            Response.Redirect(Request.RawUrl);
        }

        /*
         * Acao do botão deve remover alternativaspassadas na lista de booleanos
         * se for true, a alternativa deve desaparecer
         */ 
        protected void RemoverAlternativas_Click(object sender, EventArgs e)
        {
            int i;
            bool[] alt = (new Ajuda()).removerAlternativas(partida);
            //alternativas.Items.Clear();
            for (i = 0; i < alt.Length; ++i)
                if (alt[i] == true)
                {
                    //alternativa[i].Enabled = false;
                    //alternativas.Items.Add(alternativa[i]);
                    alternativas.Items.FindByText(alternativa[i].Text).Enabled = false;
                }                
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if(tempo.CompareTo(DateTime.Now) > 0)
            {
                ContadorL.Text = "ACABOU!";
                partida.pararPartida();
                Response.Redirect("~/Interface/TelaJogo3");
                
            }
            else
            {
                cronometro--;
                ContadorL.Text = cronometro.ToString();
            }
        }
    }
}