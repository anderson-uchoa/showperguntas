using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Negocio
{
    public class Ajuda
    {
        public String[] mostrarEstatisticas(Partida p)
        {
            if (p.ajuda[Defines.ESTAT] <= 0)
                return null;
            else
            {
                return p.rodada.mostrarEstatisticas();
            }
        }

        public bool pularPergunta(Partida p)
        {
            if (p.ajuda[Defines.PULAR] <= 0)
                return false;
            else
            {
                int i;
                int[] velhoIdPerguntas = p.IdPerguntas;
                p.IdPerguntas = new int[velhoIdPerguntas.Length + 1];
                for (i = 0; i < p.IdPerguntas.Length; ++i)
                {
                    if (i < velhoIdPerguntas.Length)
                        p.IdPerguntas[i] = velhoIdPerguntas[i];
                    else
                        p.IdPerguntas[i] = -1;
                }
                p.novaRodada();
                        
                return true;
            }
        }

        public bool[] removerAlternativas(Partida p)
        {
            if (p.ajuda[Defines.REMOV] <= 0)
                return null;
            else
            {
                Random rand = new Random();
                return p.rodada.selecionaAlt(rand.Next(5));
            }
        }
    }
}