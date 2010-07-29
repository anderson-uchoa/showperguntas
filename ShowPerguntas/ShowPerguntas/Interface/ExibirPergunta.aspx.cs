using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

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

                Pergunta p = new Pergunta();
                if (p.BuscarPerguntaPorId(id))
                {
                    EnunciadoTextBox.Text = p.enunciado;
                    DificuldadeDropdownlist.SelectedIndex = Convert.ToInt32(p.dificuldade);
                    TemaDropdownlist.SelectedValue = Convert.ToString(p.tema);
                    AlternativaCorretaTextBox.Text = p.alternativas[0];
                    AlternativaIncorreta1TextBox.Text = p.alternativas[1];
                    AlternativaIncorreta2TextBox.Text = p.alternativas[2];
                    AlternativaIncorreta3TextBox.Text = p.alternativas[3];
                    AlternativaIncorreta4TextBox.Text = p.alternativas[4];
                    EstatisticACTextBox.Text = Convert.ToString(p.estatisticas[0]);
                    EstatisticAI1TextBox.Text = Convert.ToString(p.estatisticas[1]);
                    EstatisticAI2TextBox.Text = Convert.ToString(p.estatisticas[2]);
                    EstatisticAI3TextBox.Text = Convert.ToString(p.estatisticas[3]);
                    EstatisticAI4TextBox.Text = Convert.ToString(p.estatisticas[4]);
                }
            }
        } 
        
        protected void Salvar(object sender, EventArgs e)
        {
            Pergunta pergunta = new Pergunta(id, EnunciadoTextBox.Text, AlternativaCorretaTextBox.Text, AlternativaIncorreta1TextBox.Text,
                AlternativaIncorreta2TextBox.Text, AlternativaIncorreta3TextBox.Text, AlternativaIncorreta4TextBox.Text, TemaDropdownlist.SelectedValue,
                DificuldadeDropdownlist.SelectedValue);
            if (pergunta.AtualizarPergunta())
            {
                Response.Redirect("~/Interface/ListarPerguntas.aspx");
            }
            else
            {
                Response.Redirect("~/Interface/Home.aspx");
            }
        }
        
        public void Cancelar(object sender, EventArgs e)
        {
            Response.Write("~/Interface/ListarPerguntas.aspx");
        }
    }
}