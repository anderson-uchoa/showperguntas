using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ShowPerguntas.Dados
{
    public class UsuarioDAO
    {
        #region Atributos

            public int IdUsuario;
            public String nome;
            public String sobrenome;
            public String login;
            public String senha;
            public DateTime data;

        #endregion
        
        public Usuario BuscarUsuario(String login)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                return _context.Usuarios.FirstOrDefault(u => u.login == login);
            }
        }

        public Boolean InserirUsuario()
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    Usuario u = new Usuario();
                    u.nome = this.nome;
                    u.sobrenome = this.sobrenome;
                    u.login = this.login;
                    u.senha = this.senha;
                    u.dataCadastro = DateTime.Now;
                    _context.AddToUsuarios(u); 
                    _context.SaveChanges();
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
                // throw;
            }
        }

        public List<Usuario> BuscarUsuarios()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                var result = _context.Usuarios.ToList();
                return result;
            }
        }

        public List<Usuario> BuscarJogadores()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                var result = (from u in _context.Usuarios where u.IdUsuario > 0 select u).ToList();
                return result;
            }
        }   
    }
}