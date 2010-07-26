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

        public SampleCollection<String> alternativas = new SampleCollection<String>();

        public SampleCollection<int> estatisticas = new SampleCollection<int>();

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
            this.alternativas.array[0] = aC;
            this.alternativas.array[1] = aI1;
            this.alternativas.array[2] = aI2;
            this.alternativas.array[3] = aI3;
            this.alternativas.array[4] = aI4;
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

        #endregion

        #region Methods

        public Boolean InserirNovaPergunta()
        {
            try
            {
                PerguntaDAO pDAO = new PerguntaDAO();
                TemaDAO tDAO = new TemaDAO();
                List<Tema> temas = tDAO.BuscarTemas();
                foreach (Tema t in temas)
                {
                    if (t.descricao.Equals(this.tema))
                        pDAO.idTema = t.IdTema;
                }
                pDAO.enunciado = this.enunciado;
                pDAO.alternativaCorreta = this.alternativas.array[0];
                pDAO.alternativaIncorreta1 = this.alternativas.array[1];
                pDAO.alternativaIncorreta2 = this.alternativas.array[2];
                pDAO.alternativaIncorreta3 = this.alternativas.array[3];
                pDAO.alternativaIncorreta4 = this.alternativas.array[4];
                switch (this.dificuldade)
                {
                    case "0":
                        pDAO.dificuldade = 0;
                        break;
                    case "1":
                        pDAO.dificuldade = 1;
                        break;
                    case "2":
                        pDAO.dificuldade = 2;
                        break;
                    default:
                        return false;
                }
                pDAO.InserirPergunta();
                return true;
            }
            catch (Exception)
            {
                return false;
                // throw;
            }
            
        }

        public void setarAtributos(Dados.Pergunta p)
        {
                 
            idPergunta = p.IdPergunta;
            enunciado = p.enunciado;

            alternativas[0] = p.alternativaCorreta;
            alternativas[1] = p.alternativaIncorreta1;
            alternativas[2] = p.alternativaIncorreta2;
            alternativas[3] = p.alternativaIncorreta3;
            alternativas[4] = p.alternativaIncorreta4;

            estatisticas[0] = p.vezesRespondidaAltCorreta;
            estatisticas[1] = p.vezesRespondidaAltIncorreta1;
            estatisticas[2] = p.vezesRespondidaAltIncorreta2;
            estatisticas[3] = p.vezesRespondidaAltIncorreta3;
            estatisticas[4] = p.vezesRespondidaAltIncorreta4;

            /*
             * Aqui teremos que pegar os temas de verdade a partir do id que a pergunta possui do tema...
             * Essa brincadeira aqui tem que sair!!!!!
             */
            Random r = new Random();
            int numero = r.Next(5);
            string[] temas = new string[5] { "Minha sogra é...", "O bara é...", "O Felipe Melo é...",
                        "Corinthiano é...", "Quem não chora, não ..."};
            tema = temas[numero];
        }
        
        #endregion       
    }

    public partial  class SampleCollection<T>
    {
        // Declare an array to store the data elements.
        public T[] array = new T[5];

        // Define the indexer, which will allow client code
        // to use [] notation on the class instance itself.        
        public T this[int i]
        {
            get
            {
                // This indexer is very simple, and just returns or sets
                // the corresponding element from the internal array.
                return array[i];
            }
            set
            {
                array[i] = value;
            }
        }
    }

}