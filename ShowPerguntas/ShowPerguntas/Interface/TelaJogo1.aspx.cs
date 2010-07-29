using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage.partida == null)
                Label1.Text = "Deu Pau";
            else
                Label1.Text = "É isso aí!";
        }
    }
}