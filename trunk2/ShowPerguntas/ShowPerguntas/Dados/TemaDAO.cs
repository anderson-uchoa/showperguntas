using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Dados
{
    public class TemaDAO
    {
        public int IdTema;
        public String descricao;

        public List<Tema> BuscarTemas()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                return _context.Temas.ToList();
            }
        }

        public Tema BuscarTemaPorId(int id)
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                return (from t in _context.Temas where t.IdTema.Equals(id) select t).First();
            }
        }

     }
}