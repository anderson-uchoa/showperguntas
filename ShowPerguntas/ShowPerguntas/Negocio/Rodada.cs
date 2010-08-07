using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Negocio
{
    public class Rodada
    {
        public Pergunta p;
        public int dificuldade;
        int[] vetor;
        bool mostrar;

        /*
         * Construtor da Rodada, dificuldade corresponde à dif. da pergunta que deve ser 
         * carregada e listaIds contêm os Ids das perguntas que não podem ser carregadas
         * 
         * params: int dificuldade, int[10] listaIds
         * return: Objeto Rodada
         */
        public Rodada(int dificuldade, int[] listaIds)
        {
            mostrar = false;
            this.dificuldade = dificuldade;
            p = new Pergunta(dificuldade, listaIds);
        }

        /*
         * Coloca os textos da pergunta e suas respostas 
         * 
         * params: -
         * return: String[6] - Vetor com o enunciado na pos. 0 e alternativas 
         *         nas pos. 1 até 5 embaralhadas
         */
        public String[] colocarPergunta()
        {
            String[] pergunta;            
            if (p == null)
                return null;
            else
            {
                pergunta = embaralharAlternativas();
                return pergunta;
            }
        }

        /*
         * Embaralha as alternativas de forma randômica
         * Embora talvez exista uma forma mais simples de se fazer tal operação
         * 
         * params: -
         * return: String[6] - Vetor com o enunciado na pos. 0 e alternativas 
         *         nas pos. 1 até 5 embaralhadas
         */
        protected String[] embaralharAlternativas()
        {
            bool repetido;
            int i, j;
            Random rand = new Random();
            vetor = new int[5];

            String[] alt = new String[6];
            
            for (i = 0; i < 5; ++i)
            {
                repetido = true;
                vetor[i] = rand.Next(5);
                while (repetido == true)
                {
                    repetido = false;
                    for (j = 0; j < 5; ++j)
                    {
                        if (vetor[i] == vetor[j] && i != j)
                        {
                            vetor[i] = rand.Next(5);
                            repetido = true;
                        }
                    }
                }
            }
            alt[0] = p.enunciado;
            for (i = 0; i < 5; ++i)
                alt[vetor[i]+1] = p.alternativas[i];
            alt[vetor[0] + 1] += " C";
            return alt;
        }

        /*
         * Esta função vê se a escolha do Jogador corresponde à resposta certa
         * Também adiciona um ao contador de vezes respondidas da alternativa escolhida
         * 
         * params: int escolha = alternativa (embaralhada) correspondente à resposta do Jogador
         * return: correto = true, errado = false
         * 
         */
        public bool responder(int escolha)
        {
            for (int i = 0; i < 5; ++i)
            {
                if (vetor[i] == escolha)
                {
                    p.adicionarEstatistica(i);
                    if (i == 0)
                        return true;
                }
            }
            return false;
        }

        public String[] mostrarEstatisticas()
        {
            int i, total = 0;
            String[] estatisticas = new String[5];
            if (vetor == null)
                return null ;
            for (i = 0; i < estatisticas.Length; ++i)
                total += p.estatisticas[i] ;
            if (total == 0)
                total = 1;
            for (i = 0; i < estatisticas.Length; ++i)
                estatisticas[vetor[i]] = Convert.ToString((p.estatisticas[vetor[i]]/total)*100) ;
            return estatisticas ;
        }

        /*
         * Função: Selecionar um numero das alternativas não corretas
         * params: int numero
         * return: vetor[5] booleano, true = alternativa nao correta, false = alternativa nao selecionada
         */
        public bool[] selecionaAlt(int numero)
        {
            Random rand = new Random();
            bool[] vetorb = new bool[5] {false, false, false, false, false};
            if (numero > 5)
                return null;
            else
            {
                int i, naleatorio;
                for (i = 0; i < numero; ++i)
                {
                    naleatorio = rand.Next(5);
                    if (vetorb[naleatorio] == true || naleatorio == vetor[0])
                        --i;
                    else
                        vetorb[naleatorio] = true;
                }
            }
            return vetorb;
        }
    }
}