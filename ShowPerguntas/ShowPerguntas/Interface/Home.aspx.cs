using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Interface
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            String login = Login.UserName;
            String senha = Login.Password;
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    var admin = _context.Usuarios.FirstOrDefault(u => u.IdUsuario == 0);
                    Login.TitleText = admin.login;
                    if ((login.Equals(admin.login)) && (senha.Equals(admin.senha)))
                    {
                        e.Authenticated = true;
                        Session["tipo"] = "DefaultAdministrador";
                        Login.DestinationPageUrl = "~/administrador.aspx";
                        FormsAuthentication.RedirectFromLoginPage(Login.UserName, true);
                    }        
                    else
                    {                    
                        var result = from u in _context.Usuarios select u;
                        foreach (var usr in result)
                        {
                            if ((login.Equals(usr.login)) && (senha.Equals(usr.senha)))
                            {
                                e.Authenticated = true;
                                Session["tipo"] = "DefaultJogador";
                                Login.DestinationPageUrl = "~/jogador.aspx";
                                FormsAuthentication.RedirectFromLoginPage(Login.UserName, true);
                            }
                            else
                            {

                            }
                        }
                    }
                }
            }
            catch
            {
            }            
        }

        protected void Mudar(object sender, EventArgs e)
        {
            var _context = new Show_de_PerguntasEntities();
            var admin = _context.Usuarios.FirstOrDefault(u => u.IdUsuario == 0);
            Login.TitleText = admin.login;
        }
    }
}