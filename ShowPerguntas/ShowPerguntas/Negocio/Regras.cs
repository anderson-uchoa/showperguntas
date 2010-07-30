using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Negocio
{
    public class Regras
    {
        
        public void aplicarRegrasFacil(Partida p)
        {
            p.pontuacao = 0;
            p.pontuacaoNivel = new int[] { 100, 300, 500 };
            p.tempo = 60;
            p.ajuda = new int[] { 3, 3, 3 };
            p.qntPerguntas = new int[] { 6, 2, 2 };
        }

        public void aplicarRegrasMedio(Partida p)
        {
            p.pontuacao = 0;
            p.pontuacaoNivel = new int[] { 100, 500, 1000 };
            p.tempo = 35;
            p.ajuda = new int[] { 2, 2, 2 };
            p.qntPerguntas = new int[] { 3, 4, 3 };
        }

        public void aplicarRegrasDificil(Partida p)
        {
            p.pontuacao = 0;
            p.pontuacaoNivel = new int[] { 100, 800, 1500 };
            p.tempo = 18;
            p.ajuda = new int[] { 1, 1, 1 };
            p.qntPerguntas = new int[] { 2, 2, 6 };
        }

    }
}