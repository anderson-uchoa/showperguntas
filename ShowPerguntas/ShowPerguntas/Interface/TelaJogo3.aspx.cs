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
            int numero;
            verificarUsuario();

            partida = (Partida) Session["partida"];

            pontuacaoFinalLabel.Text = Convert.ToString(partida.pontuacao);
            posicaoRankingLabel.Text = Convert.ToString(partida.posicao)+"°";

            switch(partida.estadoPartida()){
                case Defines.GANHOU:
                        numero = rand.Next(1, 1);
                        Imagem.ImageUrl = "~/Imagens/Ganhou" + Convert.ToString(numero) + ".jpg";
                        dadosFimDaPartida.Visible = true;
                        ContinuarButton.Visible = true;
                       // posicaoRankingLabel = "";
                    break;

                case Defines.ATIVO:
                        numero = rand.Next(1, 1);
                        Imagem.ImageUrl = "~/Imagens/Acertou" + Convert.ToString(numero) + ".jpg";
                        Response.AddHeader("REFRESH", "1;URL=TelaJogo1.aspx");
                    break;

                case Defines.PERDEU:
                    numero = rand.Next(1, 6);
                    Imagem.ImageUrl = "~/Imagens/GameOver" + Convert.ToString(numero) + ".jpg";
                    dadosFimDaPartida.Visible = true;
                    ContinuarButton.Visible = true;
                break;
            
                case Defines.PAROU:
                    numero = rand.Next(1, 1);
                    Imagem.ImageUrl = "~/Imagens/parar" + Convert.ToString(numero) + ".jpg";
                    dadosFimDaPartida.Visible = true;
                    ContinuarButton.Visible = true;
                break;
            }
        }

        protected void Continuar_Click(object sender, EventArgs e)
        {
            Session["decidiuParar"] = null;
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