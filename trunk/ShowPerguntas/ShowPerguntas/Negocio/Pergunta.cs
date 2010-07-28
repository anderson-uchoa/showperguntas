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
 
        public int idPergunta;

        public String enunciado;

        public String[] alternativas = new String[5];

        public int[] estatisticas = new int[5];

        public String tema;

        public String dificuldade;

        #endregion        

        #region Constructors

        public Pergunta()
        {
        }

        public Pergunta(String e, String aC, String aI1, String aI2, String aI3, String aI4, String t, String d)
        {
            this.enunciado = e;
            this.alternativas[0] = aC;
            this.alternativas[1] = aI1;
            this.alternativas[2] = aI2;
            this.alternativas[3] = aI3;
            this.alternativas[4] = aI4;
            this.tema = t;
            this.dificuldade = d;
        }

        public Pergunta(int id, String e, String aC, String aI1, String aI2, String aI3, String aI4, String t, String d)
        {
            this.idPergunta = id;
            this.enunciado = e;
            this.alternativas[0] = aC;
            this.alternativas[1] = aI1;
            this.alternativas[2] = aI2;
            this.alternativas[3] = aI3;
            this.alternativas[4] = aI4;
            this.tema = t;
            this.dificuldade = d;
        } 
        
        public Pergunta(int dificuldade, int[] listaIds)
        {
            int contador = 0;
            int numero;
            List<Dados.Pergunta> p = (new PerguntaDAO()).BuscarPerguntaPorDificuldade(dificuldade);
            Random r = new Random();
            while(contador < 500)
            {
                numero = r.Next(p.Count);
                for (int i = 0; i < listaIds.Length; ++i)
                {
                    if (p[numero].IdPergunta == listaIds[i])
                        i = listaIds.Length;
                    else if(i == listaIds.Length - 1)
                        setarAtributos(p[numero]);
                    contador = 500;
                }

                contador++;
            }
        }

        public Pergunta(int[] listaIds, int dif)
        {
            int numero = 0;
            List<Dados.Pergunta> p = (new PerguntaDAO()).BuscarPerguntaPorDificuldade(dif);
            Random r = new Random();    
            while (true)
            {
                numero = r.Next(p.Count);
                if(!listaIds.Contains(p[numero].IdPergunta))
                {
                   setarAtributos(p[numero]);
                   break;
                }
            }
        }

        #endregion

        #region Methods

        public Boolean InserirNovaPergunta()
        {
            try
            {
                PerguntaDAO pDAO = new PerguntaDAO();
                pDAO.enunciado = this.enunciado;
                pDAO.idTema = Convert.ToInt32(this.tema);
                pDAO.alternativaCorreta = this.alternativas[0];
                pDAO.alternativaIncorreta1 = this.alternativas[1];
                pDAO.alternativaIncorreta2 = this.alternativas[2];
                pDAO.alternativaIncorreta3 = this.alternativas[3];
                pDAO.alternativaIncorreta4 = this.alternativas[4];
                pDAO.dificuldade = Convert.ToInt32(this.dificuldade);
                pDAO.InserirPergunta();
                return true;
            }
            catch (Exception)
            {
                return false;
                // throw;
            }
            
        }

        public Boolean AtualizarPergunta()
        {
            try
            {
                PerguntaDAO pDAO = new PerguntaDAO();
                pDAO.idPergunta = this.idPergunta;
                pDAO.enunciado = this.enunciado;
                pDAO.idTema = Convert.ToInt32(this.tema);
                pDAO.alternativaCorreta = this.alternativas[0];
                pDAO.alternativaIncorreta1 = this.alternativas[1];
                pDAO.alternativaIncorreta2 = this.alternativas[2];
                pDAO.alternativaIncorreta3 = this.alternativas[3];
                pDAO.alternativaIncorreta4 = this.alternativas[4];
                pDAO.dificuldade = Convert.ToInt32(this.dificuldade);                
                return pDAO.AtualizarPergunta(); ;
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        public Boolean BuscarPerguntaPorId(int id)
        {
            try
            {
                PerguntaDAO pDAO = new PerguntaDAO();
                if (pDAO.BuscarPerguntaPorId(id))
                {
                    this.idPergunta = pDAO.idPergunta;
                    this.enunciado = pDAO.enunciado;
                    this.dificuldade = Convert.ToString(pDAO.dificuldade);
                    this.alternativas[0] = pDAO.alternativaCorreta;
                    this.alternativas[1] = pDAO.alternativaIncorreta1;
                    this.alternativas[2] = pDAO.alternativaIncorreta2;
                    this.alternativas[3] = pDAO.alternativaIncorreta3;
                    this.alternativas[4] = pDAO.alternativaIncorreta4;
                    this.estatisticas[0] = pDAO.estatisticaAltCorreta;
                    this.estatisticas[1] = pDAO.estatisticaAltIncorreta1;
                    this.estatisticas[2] = pDAO.estatisticaAltIncorreta2;
                    this.estatisticas[3] = pDAO.estatisticaAltIncorreta3;
                    this.estatisticas[4] = pDAO.estatisticaAltIncorreta4;
                    this.tema = Convert.ToString(pDAO.idTema);
                    return true;
                }
                else
                    return false;
            }
            catch (Exception)
            {
                return false;
                //throw;
            }            
            //return (new PerguntaDAO()).BuscarPerguntaPorId(id);
        }

        public void setarAtributos(Dados.Pergunta p)
        {
                 
            this.idPergunta = p.IdPergunta;
            this.enunciado = p.enunciado;
            this.tema = p.Tema.descricao;

            this.alternativas[0] = p.alternativaCorreta;
            this.alternativas[1] = p.alternativaIncorreta1;
            this.alternativas[2] = p.alternativaIncorreta2;
            this.alternativas[3] = p.alternativaIncorreta3;
            this.alternativas[4] = p.alternativaIncorreta4;

            this.estatisticas[0] = p.vezesRespondidaAltCorreta;
            this.estatisticas[1] = p.vezesRespondidaAltIncorreta1;
            this.estatisticas[2] = p.vezesRespondidaAltIncorreta2;
            this.estatisticas[3] = p.vezesRespondidaAltIncorreta3;
            this.estatisticas[4] = p.vezesRespondidaAltIncorreta4;           
        }
        
        #endregion       
    }
}