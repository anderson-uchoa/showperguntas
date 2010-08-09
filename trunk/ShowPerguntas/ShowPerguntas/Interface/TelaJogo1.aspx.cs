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

        #region Atributos

        String escolha = "Fácil";
        public Partida partida;
        protected String[] continuar = new String[6] {"Silvio, proxima Pergunta", "Ripa na Xulipa", "Manda Bala", "Pé na Tabua", "Mete Bronca", "May the force be with... me"};
        protected String[] parar = new String[6] {"Parei", "Fui", "Miei", "Me chama de mocinha e me tira daqui", "Perdi!", "I'll be Back"};

        #endregion

        #region EventosDaPagina
        protected void Page_Load(object sender, EventArgs e)
        {
            verificarUsuario();
            partida = (Partida) Session["partida"];
            setarValoresCampos();
        }

        protected void ContinuarResp_Click(object sender, EventArgs e)
        {
            partida.novaRodada();
            Response.Redirect("~/Interface/TelaJogo2.aspx");
        }

        protected void Parar_Click(object sender, EventArgs e)
        {
            // Caso o jogador clique em Parar, pára o jogo
            if (partida.estadoPartida() == Defines.ATIVO)
            {
                partida.pararPartida();
                Response.Redirect("~/Interface/TelaJogo3.aspx");
            }
            // Ou se ele não estiver jogando, e clica no botão, volta para o menu principal
            else{
                Response.Redirect("~/Interface/JogadorMenu.aspx");
            }
        }

        protected void facil_click(object sender, EventArgs e)
        {
            partida.novaPartida(Defines.FACIL);
            partida.colocarIdUsuario(Convert.ToInt32(Session["Id"]));
            Response.Redirect("~/Interface/TelaJogo2.aspx");
        }
        protected void medio_click(object sender, EventArgs e) 
        {
            partida.novaPartida(Defines.MEDIO);
            partida.colocarIdUsuario(Convert.ToInt32(Session["Id"]));
            Response.Redirect("~/Interface/TelaJogo2.aspx");
        }
        protected void dificil_click(object sender, EventArgs e) 
        {
            partida.novaPartida(Defines.DIFICIL);
            partida.colocarIdUsuario(Convert.ToInt32(Session["Id"]));
            Response.Redirect("~/Interface/TelaJogo2.aspx");
        }

        #endregion

        #region Metodos

        protected void setarValoresCampos()
        {
            Random rand = new Random();
            ContinuarB.Text = continuar[rand.Next(continuar.Length)];
            PararB.Text = parar[rand.Next(parar.Length)];
            Label1.Text = "Escolha o nível de dificuldade";
            
            if (partida.estadoPartida() == Defines.ATIVO)
            {
                Facil.Visible = false;
                Medio.Visible = false;
                Dificil.Visible = false;
                PontuacaoL.Text = "Você já ganhou: D$ " + (partida.mostrarPontuacao()).ToString();
                RodadaL.Text = " Rodada :" + partida.numeroRodada();
                escolhaDificuldadeTable.Visible = false;
                PontuacaoTable.Visible = true;
                ContinuarB.Visible = true;
                PararB.Text = "Parar";
            }
            else
            {
                Facil.Visible = true;
                Medio.Visible = true;
                Dificil.Visible = true;
                PontuacaoTable.Visible = false;
                escolhaDificuldadeTable.Visible = true;
                ContinuarB.Visible = false;
                PararB.Text = "Voltar";
            }
        }

        public void verificarUsuario(){
            String nome = (String) Session["nome"] ;
            String tipo = (String) Session["tipo"] ;
            if (tipo == null)
                Response.Redirect("~/Interface/Home.aspx") ;
            else if (!tipo.Equals("Jogador"))
                Response.Redirect("~/Interface/Home.aspx") ;
            else if (nome == null)
                Response.Redirect("~/Interface/Home.aspx") ;

        }

        #endregion
    }
}