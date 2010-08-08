using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Negocio
{
    public class Ajuda
    {
        #region Metodos
        public String[] mostrarEstatisticas(Partida p)
        {
            if (p.ajuda[Defines.ESTAT] <= 0)
                return null;
            else
            {
                --p.ajuda[Defines.ESTAT];
                return p.rodada.mostrarEstatisticas();
            }
        }

        public Boolean pularPergunta(Partida p)
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
                p.qntPerguntas[p.rodada.dificuldade] += 1;
                p.novaRodada();
                --p.ajuda[Defines.PULAR];        
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
                --p.ajuda[Defines.REMOV];
                return p.rodada.selecionaAlt(rand.Next(5));
            }

        }

        public bool ajudasRestantes(Partida P, int tipoAjuda)
        {
            switch (tipoAjuda)
            {
                case Defines.PULAR:
                    if (P.ajuda[Defines.PULAR] <= 0)
                        return false;
                    else
                        return true;
                case Defines.ESTAT:
                    if (P.ajuda[Defines.ESTAT] <= 0)
                        return false;
                    else
                        return true;
                case Defines.REMOV:
                    if (P.ajuda[Defines.REMOV] <= 0)
                        return false;
                    else
                        return true;
                default:
                    return false;
            }
        }

        #endregion
    }
}