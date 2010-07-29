<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExibirPergunta.aspx.cs" Inherits="ShowPerguntas.Interface.ExibirPergunta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exibir Pergunta</title>
</head>
<body>
    <form id="Formulario" runat="server">
    <div>
        <asp:Table ID="Table" runat="server" Width="763px" Height="314px">
            <asp:TableRow ID="Enunciado">
                <asp:TableCell>Enunciado</asp:TableCell>
                <asp:TableCell ID="Collum1">
                    <asp:TextBox ID="EnunciadoTextBox" Width="500" TextMode="MultiLine" Rows="2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EnunciadoRequiredFieldValidator" runat="server" ControlToValidate="EnunciadoTextBox"
                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Dificuldade">
                <asp:TableCell>Dificuldade</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DificuldadeDropdownlist" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="DificuldadeRequiredFieldValidator" runat="server"
                        ControlToValidate="DificuldadeDropdownlist" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Tema">
                <asp:TableCell>Tema</asp:TableCell>
                <asp:TableCell ID="TableCell2">
                    <asp:DropDownList ID="TemaDropdownlist" runat="server" DataSourceID="ShowPerguntas2" 
                                DataTextField="descricao" DataValueField="IdTema"></asp:DropDownList>
                    <asp:EntityDataSource ID="ShowPerguntas2" runat="server" ConnectionString="name=Show_de_PerguntasEntities" 
                         DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
                                EntitySetName="Temas"></asp:EntityDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TemaDropdownlist"
                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell>
                    Estatistica
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaCorreta">
                <asp:TableCell>Alternativa Correta</asp:TableCell>
                <asp:TableCell ID="TableCell3">
                    <asp:TextBox ID="AlternativaCorretaTextBox" Width="500" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AlternativaCorretaTextBox"
                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="EstatisticACTextBox" Width="50" Enabled="false" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta1">
                <asp:TableCell>Alternativa Incorreta 1</asp:TableCell>
                <asp:TableCell ID="TableCell4">
                    <asp:TextBox ID="AlternativaIncorreta1TextBox" Width="500" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AlternativaIncorreta1TextBox"
                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
                 <asp:TableCell><asp:TextBox ID="EstatisticAI1TextBox" Width="50" Enabled="false" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta2">
                <asp:TableCell>Alternativa Incorreta 2</asp:TableCell>
                <asp:TableCell ID="TableCell5">
                    <asp:TextBox ID="AlternativaIncorreta2TextBox" Width="500" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AlternativaIncorreta2TextBox"
                        ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                </asp:TableCell>
                 <asp:TableCell><asp:TextBox ID="EstatisticAI2TextBox" Width="50" Enabled="false" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta3">
                <asp:TableCell>Alternativa Incorreta 3</asp:TableCell>
                <asp:TableCell ID="TableCell6">
                    <asp:TextBox ID="AlternativaIncorreta3TextBox" Width="500" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AlternativaIncorreta3TextBox"
                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
                 <asp:TableCell><asp:TextBox ID="EstatisticAI3TextBox" Width="50" Enabled="false" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta4">
                <asp:TableCell>Alternativa Incorreta 4</asp:TableCell>
                <asp:TableCell ID="TableCell7">
                    <asp:TextBox ID="AlternativaIncorreta4TextBox" Width="500" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AlternativaIncorreta4TextBox"
                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
                 <asp:TableCell><asp:TextBox ID="EstatisticAI4TextBox" Width="50" Enabled="false" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="buttonSalvar" runat="server" OnClick="Salvar" Text="Salvar" />
                    <asp:Button ID="buttonCancelar" runat="server" OnClick="Cancelar" Text="Cancelar"
                        CausesValidation="false" />
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
