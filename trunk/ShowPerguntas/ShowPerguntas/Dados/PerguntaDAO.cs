using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Dados
{
    public class PerguntaDAO
    {
        #region Attributes
        public int idPergunta;
        public String enunciado;
        public String alternativaCorreta;
        public String alternativaIncorreta1;
        public String alternativaIncorreta2;
        public String alternativaIncorreta3;
        public String alternativaIncorreta4;
        public int estatisticaAltCorreta;
        public int estatisticaAltIncorreta1;
        public int estatisticaAltIncorreta2;
        public int estatisticaAltIncorreta3;
        public int estatisticaAltIncorreta4;
        public String tema;
        public int dificuldade;
        public int idTema;
        #endregion

        public List<Pergunta> BuscarPergunta()
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    return _context.Perguntas.ToList();
                }
            }
            catch (Exception)
            {
                return null;
                // throw;
            }
        }

        public Boolean InserirPergunta()
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    Pergunta p = new Pergunta();
                    p.enunciado = this.enunciado;
                    p.Tema_IdTema = this.idTema;
                    p.dificuldade = this.dificuldade;
                    p.alternativaCorreta = this.alternativaCorreta;
                    p.alternativaIncorreta1 = this.alternativaIncorreta1;
                    p.alternativaIncorreta2 = this.alternativaIncorreta2;
                    p.alternativaIncorreta3 = this.alternativaIncorreta3;
                    p.alternativaIncorreta4 = this.alternativaIncorreta4;
                    _context.AddToPerguntas(p);
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

        public List<Pergunta> BuscarPerguntaPorDificuldade(int dif)
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    var result = (from p in _context.Perguntas where p.dificuldade.Equals(dif) select p).ToList();
                    return result;
                }
            }
            catch (Exception)
            {
                return null;
                //throw;
            }
        }

        public Pergunta BuscarPerguntaPorId(int id)
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    return (from p in _context.Perguntas where p.IdPergunta.Equals(id) select p).First();
                }
            }
            catch (Exception)
            {
                return null;
                // throw;
            }
        }

    }
}