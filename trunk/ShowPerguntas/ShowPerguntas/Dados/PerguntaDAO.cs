using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Dados
{
    public class PerguntaDAO
    {
        #region Attributes
        protected int idPergunta;
        protected String enunciado;
        protected String alternativaCorreta;
        protected String alternativaIncorreta1;
        protected String alternativaIncorreta2;
        protected String alternativaIncorreta3;
        protected String alternativaIncorreta4;
        protected int estatisticaAltCorreta;
        protected int estatisticaAltIncorreta1;
        protected int estatisticaAltIncorreta2;
        protected int estatisticaAltIncorreta3;
        protected int estatisticaAltIncorreta4;
        protected String tema;
        protected String dificuldade;
        protected int idTema;
        #endregion

        public List<Pergunta> BuscarPergunta()
        {
            using (var _context = new Show_de_PerguntasEntities())
            {
                return _context.Perguntas.ToList();
            }
        }

        //public Pergunta BuscarProximaPergunta()
        //{
        //    using (var _context = new Show_de_PerguntasEntities())
        //    {
        //        return _context.Perguntas.

        //    }

        //}

    }
}