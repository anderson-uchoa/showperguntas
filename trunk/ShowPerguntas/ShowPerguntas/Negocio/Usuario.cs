using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Negocio
{
    public class Usuario
    {
        protected int ID = 0;
        protected String nome = "";
        protected String sobrenome = "";
        protected String login = "";
        protected String senha = "";
        //protected String email = ""; - Implementar

        public Usuario()
        {
        }

        public Usuario(String lg, String password)
        {
            this.login = lg;
            this.senha = password;
        }

        public Boolean loginUsuario()        
        {
            UsuarioDAO usrDAO = new UsuarioDAO();
            Dados.Usuario usr = usrDAO.buscarUsuario(login);
            if (usr.login.Equals(login) && usr.senha.Equals(senha))
            {
                this.ID = usr.IdUsuario;
                this.nome = usr.nome;
                this.sobrenome = usr.sobrenome;
                return true;
            }
            else
            {
                return false;
            }
        }

        public int getID()
        {
            return this.ID;
        }

    }
}