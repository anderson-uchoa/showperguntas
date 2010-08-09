﻿using System;
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
        #region Atributos

        public double seconds;
        public String[] perguntaAtr;
        public Partida partida;
        Label[] estat;
        ListItem[] alternativa;
        public String[] estatisticas;
        DateTime tempo;
        int cronometro;

        #endregion

        #region EventosDaPagina

        protected void Page_Load(object sender, EventArgs e)
        {
            verificarUsuario();
            partida = (Partida) Session["partida"];
            seconds = (GetEndTime() - GetStartTime()).TotalSeconds;
            cronometro = partida.tempo;
            ContadorL.Text = cronometro.ToString();
            tempo = DateTime.Now;
            tempo.AddSeconds(partida.tempo);
            perguntaAtr = partida.colocarPergunta();

            MostrarEstatisticasB.Visible = (new Ajuda()).ajudasRestantes(partida, Defines.ESTAT);
            PularB.Visible = (new Ajuda()).ajudasRestantes (partida, Defines.PULAR);
            RemoverAlternativasB.Visible = (new Ajuda()).ajudasRestantes(partida, Defines.REMOV);

            qtdeMostrarEstatisticas.Text = Convert.ToString(partida.ajuda[Defines.ESTAT]);
            qtdePular.Text = Convert.ToString(partida.ajuda[Defines.PULAR]);
            qtdeRemoverAlternativas.Text = Convert.ToString(partida.ajuda[Defines.REMOV]);

            pontuacao.Text = Convert.ToString(partida.pontuacao);
                
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

        protected void ativarResposta(object sender, EventArgs e)
        {
            ResponderButton.Enabled = true;
        }


        protected void Responder_Click(object sender, EventArgs e)
        {
            int i;
            if (alternativas.SelectedItem != null)
            {
                for (i = 0; i < alternativa.Length; ++i)
                {
                    if (alternativa[i].Equals(alternativas.SelectedItem))
                        partida.responder(i);
                }

                Response.Redirect("~/Interface/TelaJogo3.aspx");
            }
        }

        protected void MostrarEstatisticas_Click(object sender, EventArgs e)
        {
            int i;
            estat = new Label[5];
            estatisticas = (new Ajuda()).mostrarEstatisticas(partida);
            for(i = 0; i < estat.Length; ++i){
                estat[i] = new Label();
                estat[i].Text = estatisticas[i];
                estat[i].Style["Position"] = "Absolute";
                estat[i].Style["Top"] = Convert.ToString(35 * i + 70) + "px";
                estat[i].Style["Left"] = "505px";

                alternativas.Items.FindByText(alternativa[i].Text).Text = alternativa[i].Text + " " + estat[i].Text;

            }
            auxiliarTable.Visible = false;
        }

        protected void Pular_Click(object sender, EventArgs e)
        {
            (new Ajuda()).pularPergunta(partida);
            Response.Redirect(Request.RawUrl);
            auxiliarTable.Visible = false;
        }

        /*
         * Acao do botão deve remover alternativaspassadas na lista de booleanos
         * se for true, a alternativa deve desaparecer
         */ 
        protected void RemoverAlternativas_Click(object sender, EventArgs e)
        {
            int i;
            bool[] alt = (new Ajuda()).removerAlternativas(partida);
            
            for (i = 0; i < alt.Length; ++i)
                if (alt[i] == true)
                {
                    alternativas.Items.FindByText(alternativa[i].Text).Enabled = false;
                    alternativas.Items.FindByText(alternativa[i].Text).Text = "<del>" + alternativa[i].Text + "</del>";
                }
            auxiliarTable.Visible = false;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if(tempo.CompareTo(DateTime.Now) > 0)
            {
                ContadorL.Text = "ACABOU!";
                partida.tempoEsgotado();
                Response.Redirect("~/Interface/TelaJogo3");
                

            }
            else
            {
                cronometro--;
                ContadorL.Text = cronometro.ToString();
            }
        }

        #endregion

        #region Metodos

        private DateTime GetStartTime()
        {
            return DateTime.Now;
        }
        private DateTime GetEndTime()
        {
            return DateTime.Now.AddSeconds(partida.tempo);
        }

        public void verificarUsuario()
        {
            String nome = (String)Session["nome"];
            String tipo = (String)Session["tipo"];
            if (tipo == null)
                Response.Redirect("~/Interface/Home.aspx");
            else if (!tipo.Equals("Jogador"))
                Response.Redirect("~/Interface/Home.aspx");
            else if (nome == null)
                Response.Redirect("~/Interface/Home.aspx");

        }

        #endregion
    }
}