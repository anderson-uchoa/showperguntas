using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class Perfil : System.Web.UI.Page
    {
        Jogador jog = new Jogador();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                if (jog.BuscarJogadorPorId(Convert.ToInt32(Session["id"])))
                {
                    nomeTextBox.Text = jog.nome;
                    sobrenomeTextBox.Text = jog.sobrenome;
                    loginTextBox.Text = jog.login;
                    Session["senha"] = jog.senha;
                }
            }
        }

        //ta meio estranho mas to com preguiça de atualizar
        protected void SalvarJogador_C(object sender, EventArgs e)
        {
            Jogador jogadorAtualizado = new Jogador();
            // se escolheu mudar a senha
            if(AlterarSenhaCheckBox.Checked == true) 
            {
                if (senhaAntigaTextBox.Text.Equals(Convert.ToString(Session["senha"])))// se senha antiga confirma
                {
                    jogadorAtualizado = new Jogador(Convert.ToInt32(Session["id"]),nomeTextBox.Text,sobrenomeTextBox.Text,
                        loginTextBox.Text, novaSenhaTextBox.Text );
                    // Agora sim vamos atualizar a tabela
                    if (jogadorAtualizado.AtualizarJogador())
                    {
                        Response.Redirect("~/Interface/JogadorMenu.aspx");
                    }
                    else
                    {
                        Response.Write("Ops! deu algum problema");
                    }
                }
                else//se senha antiga não confirma
                {
                    senhaIncorretaAviso.Visible = true;
                    novaSenhaTextBox.Text = "";
                    confirmeNovaSenhaTextBox.Text = "";
                }
            }
            else //se não quer mudar a senha
            {
                jogadorAtualizado = new Jogador( Convert.ToInt32(Session["id"]), nomeTextBox.Text, sobrenomeTextBox.Text,
                        loginTextBox.Text, Convert.ToString(Session["senha"]));
                // Agora sim vamos atualizar a tabela
                if (jogadorAtualizado.AtualizarJogador())
                {
                    Response.Redirect("~/Interface/JogadorMenu.aspx");
                }
                else
                {
                    Response.Write("Ops! deu algum problema");
                }
            }
            
        }

        protected void Cancelar_C(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/JogadorMenu.aspx");
        }

        protected void AlterarSenha_C(object sender, EventArgs e)
        {
            if (senhaAntiga.Visible == false)
            {
                senhaAntiga.Visible = true;
                NovaSenha.Visible = true;
                ConfirmeNovaSenha.Visible = true;
                CompareValidator.Visible = true;
            }
            else
            {
                senhaAntiga.Visible = false;
                NovaSenha.Visible = false;
                ConfirmeNovaSenha.Visible = false;
                CompareValidator.Visible = false;
                senhaIncorretaAviso.Visible = false;
            }
        }


    }
}