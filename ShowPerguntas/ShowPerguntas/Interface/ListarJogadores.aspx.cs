using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class ListarJogadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Voltar(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/GerenciadorJogadores.aspx");
        }
    }
}