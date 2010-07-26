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

     }
}