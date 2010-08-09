
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Negocio
{
    public static class Defines
    {
        public const string regras = "Cara, esse e um jogo massa onde você deve fazer muitos pontos respondendo às perguntas. Da um iniciar partida aew!";
        public const int QNTPERGUNTAS = 10;

        public const int FACIL = 0;
        public const int MEDIO = 1;
        public const int DIFICIL = 2;

        public const int PULAR = 0;
        public const int ESTAT = 1;
        public const int REMOV = 2;

        public const int ATIVO = 0;
        public const int GANHOU = 1;
        public const int PERDEU = 2;
        public const int PAROU = 3;
    }
}