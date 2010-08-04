using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Negocio
{
    public class Ajuda
    {
        public bool mostrarEstatisticas(Partida p)
        {
            if (p.ajuda[Defines.ESTAT] <= 0)
                return false;
            else
            {
                p.rodada.mostrarEstatisticas();
                return true;
            }
        }

        public bool pularPergunta(Partida p)
        {
            if (p.ajuda[Defines.PULAR] <= 0)
                return false;
            else
            {
                //TODO
                return true;
            }
        }

        public bool removerAlternativas(Partida p)
        {
            if (p.ajuda[Defines.REMOV] <= 0)
                return false;
            else
            {
                //TODO
                return true;
            }
        }
    }
}