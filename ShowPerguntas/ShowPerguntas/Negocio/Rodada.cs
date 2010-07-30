using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Negocio
{
    public class Rodada
    {
        public Pergunta P;
        public int dificuldade;
        int[] vetor;
        public Rodada(int dificuldade, int[] listaIds)
        {
            this.dificuldade = dificuldade;
            P = new Pergunta(dificuldade, listaIds);
        }

        public String[] colocarPergunta()
        {
            String[] pergunta;
            if (P == null)
                return null;
            else
            {
                pergunta = embaralharAlternativas();
                return pergunta;
            }
        }

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
                        if (vetor[i] == vetor[j] && i != j)
                        {
                            vetor[i] = rand.Next(5);
                            repetido = true;
                        }
                }
            }
            alt[0] = P.enunciado;
            for (i = 0; i < 5; ++i)
                alt[vetor[i]+1] = P.alternativas[i];
            return alt;
        }

        public bool responder(int escolha)
        {
            if (vetor[0] == escolha)
                return true;
            else
                return false;
        }
    }
}