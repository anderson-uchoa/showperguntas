﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo3 : System.Web.UI.Page
    {
        Partida partida;
        protected void Page_Load(object sender, EventArgs e)
        {
            Random rand = new Random();

            partida = (Partida) Session["partida"];
            

            if (partida.estaAtivo())
            {
                int numero = rand.Next(1, 1);
                Imagem.ImageUrl = "~/Imagens/Acertou" + Convert.ToString(numero) + ".jpg";
                Continuar.Visible = false;
                Response.AddHeader("REFRESH", "3;URL=TelaJogo1.aspx");
            }
            else
            {
                int numero = rand.Next(1, 6);
                Continuar.Visible = true;
                Imagem.ImageUrl = "~/Imagens/GameOver" + Convert.ToString(numero) + ".jpg";
            }


        }

        protected void Continuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/TelaJogo1.aspx");
        }
    }
}