using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class CadastroJogador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancelar_C(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/Home.aspx");
        }

        protected void SalvarJogador_C(object sender, EventArgs e)
        {
            ErroLogin.Visible = false;
            //verifica se logi já existe
            if (Usuario.LoginOcupado(loginTextBox.Text))
            {
                senhaTextBox.Text = "";
                confirmeSenhaTextBox.Text = "";
                ErroLogin.Visible = true;
            }
            else
            {
                Jogador j = new Jogador(nomeTextBox.Text, sobrenomeTextBox.Text, loginTextBox.Text, senhaTextBox.Text);
                //essa função deve cadastrar o jogador e retornar TRUE se der certo
                if (j.CadastrarJogador())
                {
                    //Jogador cadastrado com sucesso PARABÉNS, você será redirecionado para tela de login para confirmar o cadastro!
                    Response.Redirect("~/Interface/Home.aspx");
                }
                else
                {
                    //houve algum problema
                }
            }
        }
    }
}