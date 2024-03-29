﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(Login);
            Logo.ImageUrl = "~/Imagens/logo.png";           
        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            String login = Login.UserName;
            String senha = Login.Password;

            try
            {
                Usuario usr = new Usuario(login, senha);
                if (usr.LoginUsuario())
                {
                    e.Authenticated = true;
                    Session["nome"] = usr.nome;
                    if (usr.getID() == 0)
                    {
                        Session["tipo"] = "Administrador";
                        Login.DestinationPageUrl = "~/Interface/AdministradorMenu.aspx";
                    }
                    else
                    {
                        Session["tipo"] = "Jogador";
                        Session["Id"] = Convert.ToString(usr.getID());
                        Login.DestinationPageUrl = "~/Interface/JogadorMenu.aspx";
                    }
                    FormsAuthentication.RedirectFromLoginPage(usr.nome, false);
                }
                else
                {
                    e.Authenticated = false;
                }
            }
            catch
            {
            }       
        }



        protected void BotaoCadastroClick(object sender, EventArgs e)
        {
            Response.Redirect("~/InterfaceAberta/CadastroJogador.aspx");
        }

        protected void BotaoRegrasClick(object sender, EventArgs e)
        {
            
            Response.Redirect("~/InterfaceAberta/Regras.aspx");
        }

    }
}