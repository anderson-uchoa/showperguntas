using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShowPerguntas.Interface
{
    public partial class ExibirPergunta : System.Web.UI.Page
    {
        public static int id;

        private enum Dificuldades { facil, medio, dificil };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] names = Enum.GetNames(typeof(Dificuldades));
                Array values = Enum.GetValues(typeof(Dificuldades));
                for (int i = 0; i <= names.Length - 1; i++)
                {
                    DificuldadeDropdownlist.Items.Add(new ListItem(names[i], Convert.ToInt32(values.GetValue(i)).ToString()));
                }
            }
            EnunciadoTextBox.Text= "";
            AlternativaIncorreta1TextBox.Text = "";
            AlternativaIncorreta2TextBox.Text = "";
            AlternativaIncorreta3TextBox.Text = "";
            AlternativaIncorreta4TextBox.Text = "";

        } 
        
        protected void Salvar(object sender, EventArgs e)
         {
         }
        
        public void Cancelar(object sender, EventArgs e)
         {
         }
    }
}