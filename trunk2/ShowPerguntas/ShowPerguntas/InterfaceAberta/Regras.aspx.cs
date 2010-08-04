using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;
using System.Web.Security;

namespace ShowPerguntas.InterfaceAberta
{
    public partial class Regras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Defines.regras;
        }

        protected void Voltar_Click(object sender, EventArgs e)
        {
            if (Session["Tipo"] == null)
            {
                Response.Redirect("~/Interface/Home.aspx");
            }
            else
            {
                Response.Redirect("~/Interface/" + Convert.ToString(Session["Tipo"])+ "Menu.aspx");
            }
        }
    }
}