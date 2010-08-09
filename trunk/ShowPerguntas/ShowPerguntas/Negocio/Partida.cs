﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Negocio
{
    public class Partida
    {
        #region Atributos

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
        protected int numeroMaxPerguntas = 10;

        #endregion

        #region Construtores
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

        #endregion

        #region Metodos

        public String numeroRodada()
        {
            int total, parcial = 0;
            total = numeroMaxPerguntas;
            parcial = qntPerguntas[Defines.FACIL] + qntPerguntas[Defines.MEDIO] + qntPerguntas[Defines.DIFICIL];
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
                perder();
            else
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
                    ganhar();
            }
            else
                perder();
        }

        protected void perder()
        {
            status = false;
            ganhou = false;
            pontuacao = pontuacao / 2;
            new Ranking(IdUsuario, mostrarPontuacao());
        }

        protected void ganhar()
        {
            status = false;
            ganhou = true;
            pontuacao += pontuacaoNivel[dificuldade];
            new Ranking(IdUsuario, mostrarPontuacao());
        }

        #endregion

        #region GettersSetters

        public void colocarIdUsuario(int id) { IdUsuario = id; }
        public bool ganhouPartida() { return ganhou; }
        public int mostrarPontuacao() {
            return pontuacao; 
        }
        public bool estaAtivo() { return status; }

        #endregion
    }
}