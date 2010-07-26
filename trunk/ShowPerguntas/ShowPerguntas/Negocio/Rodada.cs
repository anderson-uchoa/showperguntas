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

        public Rodada(int dificuldade, int[] listaIds)
        {
            this.dificuldade = dificuldade;
            P = new Pergunta(dificuldade, listaIds);
        }
    }
}