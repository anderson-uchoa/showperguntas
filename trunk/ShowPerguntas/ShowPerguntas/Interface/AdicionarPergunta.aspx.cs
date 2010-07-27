using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class AdicionarPergunta : System.Web.UI.Page
    {
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
        }

        protected void Salvar(object sender, EventArgs e)
        {
            Pergunta pergunta = new Pergunta(EnunciadoTextBox.Text, AlternativaCorretaTextBox.Text, AlternativaIncorreta1TextBox.Text,
                AlternativaIncorreta2TextBox.Text, AlternativaIncorreta3TextBox.Text, AlternativaIncorreta4TextBox.Text, TemaDropdownlist.SelectedValue,
                DificuldadeDropdownlist.SelectedValue);
            if (pergunta.InserirNovaPergunta())
            {
                Response.Redirect("~/Interface/GerenciadorPerguntas.aspx");
            }
            else
            {
                Response.Redirect("~/Interface/Home.aspx");
            }
        }

        protected void Cancelar(object sender, EventArgs e)
        {
            Response.Redirect("~/Interface/GerenciadorPerguntas.aspx");
        }
    }
}