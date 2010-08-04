using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShowPerguntas.Negocio;

namespace ShowPerguntas.Interface
{
    public partial class TelaJogo2 : System.Web.UI.Page
    {
        public String[] perguntaAtr;
        public Partida partida;
        Label[] estatisticas;
        RadioButton[] alternativas;
        Label enunciado;
        Label label;

        protected void Page_Load(object sender, EventArgs e)
        {
            verificarUsuario();

            partida = (Partida) Session["partida"];
            perguntaAtr = partida.colocarPergunta();
            
            if (perguntaAtr == null)
            {
                enunciado.Text = "";
                //alternativas.Text = "";
            }
            else
            {
                setarControles();
                
            }
        }

        protected void Responder_Click(object sender, EventArgs e)
        {
            /*
            int i;

            for (i = 0; i < alternativa.Length; ++i)
            {
                if (alternativa[i].Equals(alternativas.SelectedItem))
                    partida.responder(i);
            }
            
            Response.Redirect("~/Interface/TelaJogo3.aspx");*/
        }

        public void verificarUsuario()
        {
            String nome = (String)Session["nome"];
            String tipo = (String)Session["tipo"];
            if (tipo == null)
                Response.Redirect("~/Interface/Home.aspx");
            else if (!tipo.Equals("Jogador"))
                Response.Redirect("~/Interface/Home.aspx");
            else if (nome == null)
                Response.Redirect("~/Interface/Home.aspx");

        }
        /*
         * Método necessário para setar as informações da pergunta/alternativas
         * na tabela. Tambem declara as estatisticas, mas nao as exibe
         */
        protected void setarControles(){
            alternativas = new RadioButton[5];
            enunciado = new Label();
            estatisticas = new Label[5];
            int i;
            enunciado.Text = perguntaAtr[0];
            String[] estat = partida.carregarEstatisticas();
            TableCell cell = new TableCell();
            cell.Controls.Add(enunciado);
            TableRow row0 = new TableRow();
            row0.Cells.Add(cell);
            label = new Label(); label.Text = "Estatisticas";
            label.Visible = false;
            cell = new TableCell(); cell.Controls.Add(label);
            Tabela.Rows.Add(row0);

            for (i = 0; i < 5; ++i)
            {
                TableRow row1 = new TableRow();
                TableCell celula1 = new TableCell();
                TableCell celula2 = new TableCell();
                EventHandler ev = new EventHandler(OnRadioButtonSelect);
                alternativas[i] = new RadioButton();
                estatisticas[i] = new Label();

                alternativas[i].Text = perguntaAtr[i + 1];
                alternativas[i].CheckedChanged += ev;
                alternativas[i].Checked = false;
                alternativas[i].AutoPostBack = true;
                alternativas[i].CausesValidation = true;
                celula1.Controls.Add(alternativas[i]);
                

                row1.Cells.Add(celula1);
                //estatisticas[i].Visible = false;
                estatisticas[i].Text = estat[i];
                celula2.Controls.Add(estatisticas[i]);
                Tabela.Rows.Add(row1);
            }
            //Controls.Add(Tabela);
        }
        protected void OnRadioButtonSelect(object sender, System.EventArgs e) {
            int i, j;
            if (sender is RadioButton)
            {
                RadioButton radiobutton = sender as RadioButton;
                if(radiobutton.Checked)
                    for (i = 0; i < alternativas.Length; ++i)
                        if (alternativas[i].Equals(radiobutton))
                            for (j = 0; j < alternativas.Length; ++j)
                                if (i != j)
                                    alternativas[j].Checked = false;
            }
        }

        private void rBut_CheckedChanged(object sender, System.EventArgs e)
        {
            if (sender is RadioButton)
            {
                RadioButton radiobutton = sender as RadioButton;
                if (radiobutton.Checked)
                {
                    radiobutton.Text = "Checked";
                }
                else
                {
                    radiobutton.Text = "UnChecked";
                }
            }
        }

    }
}