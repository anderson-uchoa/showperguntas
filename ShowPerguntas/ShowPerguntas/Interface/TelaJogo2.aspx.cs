﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo2 : System.Web.UI.Page
    {
        public String[] perguntaAtr;
        public Partida partida;
        ListItem[] alternativa;
        public String[] estatisticas;

        protected void Page_Load(object sender, EventArgs e)
        {
            partida = (Partida) Session["partida"];
            perguntaAtr = partida.colocarPergunta();

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

        protected void RemoverAlternativas_Click(object sender, EventArgs e)
        {
            int i;
            bool[] alt = (new Ajuda()).removerAlternativas(partida);
            for (i = 0; i < alt.Length; ++i)
                if (alt[i] == true)
                {
                    alternativa[i].Enabled = false;
                    alternativas.Items.RemoveAt(i);
                }
        }
    }
}