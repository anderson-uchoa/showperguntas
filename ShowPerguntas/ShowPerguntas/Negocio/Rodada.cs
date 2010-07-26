using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Negocio
{
    public class Rodada
    {
        public Pergunta P;
        public int tempo;
        public int dificuldade;
        public Rodada(int dificuldade, int tempo)
        {
            this.dificuldade = dificuldade;
            //P = new Pergunta(dificuldade);
            this.tempo = tempo;

        }
    }
}