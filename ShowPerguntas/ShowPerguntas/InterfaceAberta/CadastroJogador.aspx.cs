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

        }
          
        protected void SalvarJogador_C(object sender, EventArgs e)
        {
            //verifica se a senha e confirmasenha são iguais
            if (senha.Text.Equals(confirmeSenha.Text))
            {           
                //verifica se logi já existe
                if(Usuario.ExisteLogin(nome.Text))
                {
                    ErroLogin.Visible = true;
                }
                else
                {               
                    //essa função deve cadastrar o jogador e retornar TRUE se der certo
                    if (Usuario.CadastrarJogador(nome.Text, sobrenome.Text, login.Text, senha.Text))
                    {
                    //Jogador cadastrado com sucesso PARABÉNS, agora faça logi para confirmar o cadastro!
                       Response.Redirect("~/Interface/Home.aspx");
                    }
                    else
                    {
                        //houve algum problema
                    }
                }
             }
             else
             {
                senha.Text = "";
                confirmeSenha.Text = "";
                ErroSenha.Visible = true;
             }
          }
    }
}