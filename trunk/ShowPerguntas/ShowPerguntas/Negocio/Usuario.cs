using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Negocio
{
    public class Usuario
    {
        public int IdUsuario;
        public String nome = "";
        public String sobrenome = "";
        public String login = "";
        public String senha = "";
        public DateTime dataCadatro;
        public String dataCadastroString = "" ;

        public Usuario()
        {
        }

        public Usuario(String lg, String password)
        {
            this.login = lg;
            this.senha = password;
        }

        public Boolean LoginUsuario()        
        {
            UsuarioDAO usrDAO = new UsuarioDAO();
            Dados.Usuario usr = usrDAO.BuscarUsuario(login);
            if (usr.login.Equals(login) && usr.senha.Equals(senha))
            {
                this.IdUsuario = usr.IdUsuario;
                this.nome = usr.nome;
                this.sobrenome = usr.sobrenome;
                return true;
            }
            else
            {
                return false;
            }
        }


        public static Boolean LoginOcupado(String L)
        {
            UsuarioDAO test = new UsuarioDAO();
            Dados.Usuario user = test.BuscarUsuario(L);
            if (user != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }        

        public int getID()
        {
            return this.IdUsuario;
        }

    }
}