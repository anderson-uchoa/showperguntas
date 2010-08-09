using System;
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
        #region Atributos

        Partida partida;

        #endregion

        #region EventosDaPagina

        protected void Page_Load(object sender, EventArgs e)
        {
            Random rand = new Random();

            verificarUsuario();

            partida = (Partida) Session["partida"];

            pontuacaoFinalLabel.Text = Convert.ToString(partida.pontuacao);

            if (Session["decidiuParar"] == null)
            {

                if (partida.estaAtivo())
                {
                    if (partida.ganhouPartida())//GANHOU
                    {
                        int numero = rand.Next(1, 1);
                        Imagem.ImageUrl = "~/Imagens/Ganhou" + Convert.ToString(numero) + ".jpg";
                        dadosFimDaPartida.Visible = true;
                        ContinuarButton.Visible = true;
                    }
                    else//não ganhou mas ACERTOU
                    {
                        int numero = rand.Next(1, 1);
                        Imagem.ImageUrl = "~/Imagens/Acertou" + Convert.ToString(numero) + ".jpg";
                        Response.AddHeader("REFRESH", "1;URL=TelaJogo1.aspx");
                    }
                }
                else //ERROU
                {
                    int numero = rand.Next(1, 6);
                    Imagem.ImageUrl = "~/Imagens/GameOver" + Convert.ToString(numero) + ".jpg";
                    dadosFimDaPartida.Visible = true;
                    ContinuarButton.Visible = true;
                }
            }
            else if (Session["decidiuParar"].Equals("parou"))
            {
                //pediu pra parar
                int numero = rand.Next(1, 1);
                Imagem.ImageUrl = "~/Imagens/parar" + Convert.ToString(numero) + ".jpg";
                dadosFimDaPartida.Visible = true;
                ContinuarButton.Visible = true;
            }

        }

        protected void Continuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/JogadorMenu.aspx");
        }

        #endregion

        #region Metodos
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