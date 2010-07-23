using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Negocio
{
    public class Pergunta
    {
        #region Attributes
        protected int idPergunta;
        protected String enunciado;
        protected String[] alternativas = new String[5];
        protected int[] estatisticas = new int[5];
        protected String tema;
        protected String dificuldade;
        #endregion        

        public Pergunta ()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                PerguntaDAO perguntaDAO = new PerguntaDAO();
          
            }
        }

    } 
}