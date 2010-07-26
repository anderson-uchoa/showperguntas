using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Negocio
{
    public class Usuario
    {
        protected int IdUsuario;
        protected String nome = "";
        protected String sobrenome = "";
        protected String login = "";
        protected String senha = "";

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

        public static Boolean CadastrarJogador(String nome, String sobrenome, String login, String senha)
        {
            try
            {
                UsuarioDAO uDAO = new UsuarioDAO();
                uDAO.nome = nome;
                uDAO.sobrenome = sobrenome;
                uDAO.login = login;
                uDAO.senha = senha;
                uDAO.InserirUsuario();
                return true;
            }
            catch (Exception)
            {
                return false;
                // throw;
            }
        }
        

        public int getID()
        {
            return this.IdUsuario;
        }

    }
}