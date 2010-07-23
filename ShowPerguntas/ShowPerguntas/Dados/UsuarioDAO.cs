using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Dados
{
    public class UsuarioDAO
    {
        public Usuario BuscarUsuario( String login)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                return _context.Usuarios.FirstOrDefault(u => u.login == login);
            }
        }
        
        
        public Usuario BuscarAdministrador()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                 return _context.Usuarios.FirstOrDefault(u => u.IdUsuario == 0);
            }
        }

        public Usuario BuscarJogador(String login)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                var result = _context.Usuarios.FirstOrDefault(u => u.login == login);
                return (Usuario) result;
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