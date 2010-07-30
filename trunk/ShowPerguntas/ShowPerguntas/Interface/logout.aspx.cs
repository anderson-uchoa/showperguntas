using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ShowPerguntas.Interface
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String af;
            af = Convert.ToString(Session["Tipo"]);
            Session.Clear();
            String s;
            s = Convert.ToString(Session["Tipo"]);
            FormsAuthentication.SignOut();
            Response.Redirect("~/Interface/Home.aspx");
        }
    }
}