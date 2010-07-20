using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Negocio
{
    public class Pergunta
    {
        #region Variables

        int idPergunta;
        String enunciado;
        List<String> alternativas;
        List<int> estatisticas;
        
        #endregion

        public Pergunta ()
        {
            
        }

    } 
}