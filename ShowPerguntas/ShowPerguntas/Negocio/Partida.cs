using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Negocio
{
    public class Partida
    {
        protected bool ganhou;
        protected bool status;
        public Rodada rodada;
        protected int dificuldade;
        protected int nivel;
        public int[] ajuda;
        public int[] pontuacaoNivel;
        public int pontuacao;
        public int tempo;
        public int[] IdPerguntas;
        public int[] qntPerguntas;


        public void novaPartida(int dificuldade)
        {
            int i;
            status = true;
            this.dificuldade = dificuldade;
            IdPerguntas = new int[Defines.QNTPERGUNTAS];
            pontuacao = 0;
            for (i = 0; i < IdPerguntas.Length; ++i)
                IdPerguntas[i] = -1;
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
            novaRodada();
        }

        public int numeroRodada()
        {
            int i;
            for (i = 0; i < IdPerguntas.Length; ++i)
                if (IdPerguntas[i] == -1)
                    return i;
            return i;
        }


        public void novaRodada()
        {
            int i;
            if (numeroRodada == IdPerguntas.Length)
                ganhou = true;                
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
            else
                pararPartida();

            if(status != false)
                for (i = 0; i < IdPerguntas.Length; ++i)
                    if (IdPerguntas[i] == -1)
                    {
                        IdPerguntas[i] = rodada.P.idPergunta;
                        i = IdPerguntas.Length;
                    }

        }

        public void pararPartida()
        {
            status = false;
        }

        public bool estaAtivo()
        {
            return status;
        }

        public String[] colocarPergunta() 
        {
            return rodada.colocarPergunta();
        }

        public void responder(int escolha)
        {
            status = rodada.responder(escolha);
            if (status == true)
            {
                pontuacao += pontuacaoNivel[rodada.dificuldade];
            }

        }
    }
}