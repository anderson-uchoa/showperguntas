using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Negocio
{
    public class Partida
    {
        protected Rodada rodada;
        protected int dificuldade;
        protected int nivel;
        public int[] ajuda;
        public int[] pontuacao;
        public int tempo;
        public int[] IdPerguntas;
        public int[] qntPerguntas;

        public void novaPartida(int dificuldade)
        {
            this.dificuldade = dificuldade;
            switch (dificuldade)
            {
                case Defines.FACIL:
                    (new Regras()).aplicarRegrasFacil(this);
                    break;
                case Defines.MEDIO:
                    (new Regras()).aplicarRegrasMedio(this);
                    break;
                case Defines.DIFICIL:
                    (new Regras()).aplicarRegrasDificil(this);
                    break;
                default:
                    //Exception??
                    break;
            }
        }

        public void novaRodada()
        {
            if (qntPerguntas[Defines.FACIL] > 0)
            {
                rodada = new Rodada(Defines.FACIL, IdPerguntas);
                qntPerguntas[Defines.FACIL] -= 1;
            }
            else if (qntPerguntas[Defines.MEDIO] > 0)
            {
                rodada = new Rodada(Defines.MEDIO, IdPerguntas);
                qntPerguntas[Defines.MEDIO] -= 1;
            }
            else if (qntPerguntas[Defines.DIFICIL] > 0)
            {
                rodada = new Rodada(Defines.DIFICIL, IdPerguntas);
                qntPerguntas[Defines.DIFICIL] -= 1;
            }

        }

        public void pararPartida()
        {
            //TODO
        }
    }
}