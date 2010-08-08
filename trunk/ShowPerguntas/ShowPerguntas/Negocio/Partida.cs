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
        protected int IdUsuario;
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
            ganhou = false;
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

        public String numeroRodada()
        {
            int total, parcial;
            parcial = qntPerguntas[Defines.FACIL] + qntPerguntas[Defines.MEDIO] + qntPerguntas[Defines.DIFICIL];
            total = IdPerguntas.Length;
            parcial = 10 - parcial;
            return parcial.ToString() + "/" + total.ToString();
        }


        public void novaRodada()
        {
            int i;
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
            {
                //ERRO - Ele nao verificou que a partida acabou lah no responder...
            }

            if (status != false)
            {
                for (i = 0; i < IdPerguntas.Length; ++i)
                {
                    if (IdPerguntas[i] == -1)
                    {
                        IdPerguntas[i] = rodada.p.idPergunta;
                        break;
                    }
                }
            }
        }

        public void pararPartida(bool tempoacabou)
        {
            status = false;
            if (tempoacabou)
                pontuacao = pontuacao / 2;
            new Ranking(IdUsuario, mostrarPontuacao());
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
                if (IdPerguntas[IdPerguntas.Length - 1] != -1)
                {
                    ganhou = true;
                    //Bonus pq ele ganhou!
                    this.pontuacao += pontuacaoNivel[dificuldade];
                    new Ranking(IdUsuario, mostrarPontuacao());
                }
            }
            else
            {
                pontuacao = pontuacao / 2;
                new Ranking(IdUsuario, mostrarPontuacao());
            }

        }


        public void colocarIdUsuario(int id) { IdUsuario = id; }
        public bool ganhouPartida() { return ganhou; }
        public int mostrarPontuacao() {
            Random rand = new Random();
            // Isso é uma bricandeira com a pontuacao
            // A pontuacao basica é sempre multiplo de 100, mas um valor randômico é adicionado somente para amostragem...
            return pontuacao + rand.Next(1,100); 
        }
        public bool estaAtivo() { return status; }
    }
}