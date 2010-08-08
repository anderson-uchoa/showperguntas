using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Negocio
{
    public class Pergunta
    {
        #region Atributos
 
        public int idPergunta;

        public String enunciado;

        public String[] alternativas = new String[5];

        public int[] estatisticas = new int[5];

        public String tema;

        public String dificuldade;

        #endregion        

        #region Construtores

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

        public Pergunta(int id, String e, String aC, String aI1, String aI2, String aI3, String aI4, String t, String d,
            String eAC, String eAI1, String eAI2, String eAI3, String eAI4)
        {
            this.idPergunta = id;
            this.enunciado = e;
            this.alternativas[0] = aC;
            this.alternativas[1] = aI1;
            this.alternativas[2] = aI2;
            this.alternativas[3] = aI3;
            this.alternativas[4] = aI4;
            this.estatisticas[0] = Convert.ToInt32(eAC);
            this.estatisticas[1] = Convert.ToInt32(eAI1);
            this.estatisticas[2] = Convert.ToInt32(eAI2);
            this.estatisticas[3] = Convert.ToInt32(eAI3);
            this.estatisticas[4] = Convert.ToInt32(eAI4);
            this.tema = t;
            this.dificuldade = d;
        }

        /*
         * Busca uma pergunta de acordo com a dificuldade dela e que o id nao esteja na lista
         * 
         * params: int dificuldade, int[10] listaIds
         * return: Objeto Pergunta
         */
        public Pergunta(int dificuldade, int[] listaIds)
        {
            int i, contador;
            bool repetido;
            int numero;
            List<Dados.Pergunta> p = (new PerguntaDAO()).BuscarPerguntaPorDificuldade(dificuldade);
            Random r = new Random();

            // Este 'for' faz a verificação se o id de uma pergunta aleatória já foi usado
            for (contador = 0; contador <= p.Count; ++contador) 
            {
                repetido = false;
                numero = r.Next(p.Count);
                for (i = 0; i < listaIds.Length; ++i){
                    if (listaIds[i] == p[numero].IdPergunta)
                    {
                        // Esta pergunta já foi feita
                        repetido = true;
                        // Pára a procura
                        i = listaIds.Length;
                    }
                    // Se encontrar o valor -1, significa que a partir dali o vetor é vazio
                    else if (listaIds[i] == -1)
                        i = listaIds.Length;
                 }
                // Caso não seja repetida, usa-se esta pergunta
                if (!repetido)
                {
                    contador = p.Count;
                    setarAtributos(p[numero]);
                }
                // Caso seja repetido e for a ultima pergunta da lista p, ai usamos uma aleatoria qualquer mesmo...
                // Aqui talvez fosse necessário lançar um erro
                else if (contador == p.Count)
                    setarAtributos(p[r.Next(p.Count)]);
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

        #region Metodos
        /*
         * Coloque a explicação AQUI POR FAVOR
         */
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

        /*
         * Coloque a explicação AQUI POR FAVOR
         */
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
                pDAO.estatisticaAltCorreta = this.estatisticas[0];
                pDAO.estatisticaAltIncorreta1 = this.estatisticas[1];
                pDAO.estatisticaAltIncorreta2 = this.estatisticas[2];
                pDAO.estatisticaAltIncorreta3 = this.estatisticas[3];
                pDAO.estatisticaAltIncorreta4 = this.estatisticas[4];
                return pDAO.AtualizarPergunta();
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        /*
         * Coloque a explicação AQUI POR FAVOR
         */
        public Boolean DeletarPergunta()
        {
            try
            {
                PerguntaDAO pDAO = new PerguntaDAO();
                pDAO.idPergunta = this.idPergunta;
                return pDAO.DeletarPergunta();
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }
        /*
         * Coloque a explicação AQUI POR FAVOR
         */
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

        /*
         * Dada uma 
         */
        public void setarAtributos(Dados.Pergunta p)
        {
            try
            {
                this.idPergunta = p.IdPergunta;
                this.enunciado = p.enunciado;
                this.tema = Convert.ToString(p.Tema_IdTema);

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
            catch
            { 
                
            }
        }

        /*
         * Aumenta em um algum dos campos de estatistica
         * 
         * params: numero da alternativa que se respondeu
         * return: -
         */
        public void adicionarEstatistica(int numeroAlternativa)
        {
            this.estatisticas[numeroAlternativa] += 1;
            Boolean boo = AtualizarPergunta();
        }
        #endregion       
    }
}