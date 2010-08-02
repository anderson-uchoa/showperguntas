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
        String escolha = "Fácil";
        public Partida partida;
        protected String[] continuar = new String[6] {"Silvio, proxima Pergunta", "Ripa na Xulipa", "Manda Bala", "Pé na Tabua", "Mete Bronca", "May the force be with... me"};
        protected String[] parar = new String[6] {"Parei", "Fui", "Miei", "Me chama de mocinha e me tira daqui", "Perdi!", "I'll be Back"};

        protected void Page_Load(object sender, EventArgs e)
        {
            Random rand = new Random();
            ContinuarB.Text = continuar[rand.Next(continuar.Length)];
            PararB.Text = parar[rand.Next(parar.Length)];
            DropDownList1.Items.Add("Fácil");
            DropDownList1.Items.Add("Médio");
            DropDownList1.Items.Add("Difícil");
            
            Label1.Text = "Esta pagina serve tanto para o jogador pedir um novo jogo quanto para continuar respondendo";
            partida = (Partida)Session["partida"];

            if (partida.estaAtivo())
            {
                Dificuldade.Visible = false;
                Pontuacao.Text = "Você já ganhou por volta de: D$ " + partida.pontuacao.ToString() + " (dinheiros)";
                DropDownList1.Visible = false;
                NovoJogoB.Visible = false;
                ContinuarB.Visible = true;
            }
            else
            {
                Dificuldade.Visible = true;
                Pontuacao.Visible = false;
                DropDownList1.Visible = true;
                NovoJogoB.Visible = true;
                ContinuarB.Visible = false;
            }
        }

        protected void NovoJogo_Click(object sender, EventArgs e)
        {
            if (escolha.Equals("Fácil"))
                partida.novaPartida(0);
            else if (escolha.Equals("Médio"))
                partida.novaPartida(1);
            else if (escolha.Equals("Difícil"))
                partida.novaPartida(2);
            Response.Redirect("~/Interface/TelaJogo2.aspx");
        }

        protected void ContinuarResp_Click(object sender, EventArgs e)
        {
            partida.novaRodada();
            Response.Redirect("~/Interface/TelaJogo2.aspx");
        }

        protected void Parar_Click(object sender, EventArgs e)
        {

            if (partida.estaAtivo())
            {
                partida.pararPartida();
                Response.Redirect("~/Interface/TelaJogo1.aspx");
            }
            else
                Response.Redirect("~/Interface/JogadorMenu.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            escolha = DropDownList1.SelectedItem.Text;
        }
    }
}