using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class ExibirRanking : System.Web.UI.Page
    {
        public int posicao = 0;

        protected void Page_Load(object sender, EventArgs e)
        { 
            
        }

        public void AtualizarPosicao(object sender, EventArgs e)
        {
            posicao++;
        }
    }
}