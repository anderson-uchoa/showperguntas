using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Dados
{
    public class UsuarioDAO
    {
        public Usuario buscarUsuario( String login)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                return _context.Usuarios.FirstOrDefault(u => u.login == login);
            }
        }
        
        
        public Usuario buscarAdministrador()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                 return _context.Usuarios.FirstOrDefault(u => u.IdUsuario == 0);
            }
        }

        public Usuario buscarJogador(String login)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                var result = _context.Usuarios.FirstOrDefault(u => u.login == login);
                return (Usuario) result;
            }
        }

        public List<Usuario> buscarUsuarios()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                var result = _context.Usuarios.ToList();
                return result;
            }
        }

        public List<Usuario> buscarJogadores()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                var result = (from u in _context.Usuarios where u.IdUsuario > 0 select u).ToList();
                return result;
            }
        }   
    }
}