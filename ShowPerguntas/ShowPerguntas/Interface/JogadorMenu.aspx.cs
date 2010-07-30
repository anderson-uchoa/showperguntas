﻿using System;
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
            Server.Transfer("~/Interface/TelaJogo1.aspx");
            //Response.Redirect("~/Interface/TelaJogo1.aspx");
        }

        protected void mostrarRanking_Click(object sender, EventArgs e)
        {

        }

        protected void BotaoRegrasClick(object sender, EventArgs e)
        {
            Response.Redirect("~/InterfaceAberta/Regras.aspx");
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

        protected void VisualizarPerfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/Perfil.aspx");
        }

    }
}