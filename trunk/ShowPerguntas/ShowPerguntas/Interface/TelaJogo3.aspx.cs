using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo3 : System.Web.UI.Page
    {
        Negocio.Partida partida;
        protected void Page_Load(object sender, EventArgs e)
        {
            partida = (Negocio.Partida) Session["partida"];
            /*
            if (partida.estaAtivo())
            { }
            else
            {
                caminho = gerarCaminho();
                GameOver.DescriptionUrl = caminho;
            }*/
            GameOver.ImageUrl = gerarCaminho();
        }

        public String gerarCaminho(){
            String caminho;
            Random rand = new Random();
            int numero = rand.Next(1,6);
            caminho = "~/Imagens/GameOver" + Convert.ToString(numero) + ".jpg";
            return caminho;
        }
    }
}