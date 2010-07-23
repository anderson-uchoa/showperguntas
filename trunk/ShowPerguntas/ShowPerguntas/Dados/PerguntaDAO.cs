using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Dados
{
    public class PerguntaDAO
    {
        public Pergunta buscarPerguntaID(int id)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                return _context.Perguntas.FirstOrDefault(u => u.IdPergunta == id);           
            }
        }

        public List<Usuario> buscarPerguntasEnunciado()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                //TODO
                return null;
            }
        }

        public List<Pergunta> buscarPerguntasAleatorias(int quantidade)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                List<Pergunta> result = null;
                Pergunta perg = null;
                int[] old = new int[quantidade];
                for (int i = 0; i < quantidade; ++i)
                {

                    //perg = 
                    //var result = (from u in _context.Usuarios where u.IdUsuario > 0 select u).ToList();
                }
                return result;
            }
        }

    }
}