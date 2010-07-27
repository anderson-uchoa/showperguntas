<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExibirPergunta.aspx.cs" Inherits="ShowPerguntas.Interface.ExibirPergunta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exibir Pergunta</title>
</head>
<%Response.Write(id); %>
<body>
    <form id="Formulario" runat="server">
    <div>
        <asp:Table ID="Table" runat="server" Width="1114px" Height="314px">
            <asp:TableRow ID="Enunciado">
                <asp:TableCell>Enunciado</asp:TableCell>
                <asp:TableCell ID="Collum1">
                    <asp:TextBox ID="EnunciadoTextBox" Width="800" TextMode="MultiLine" Rows="2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EnunciadoRequiredFieldValidator" runat="server" ControlToValidate="EnunciadoTextBox"
                        ErrorMessage="Preencher o enunciado"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Dificuldade">
                <asp:TableCell>Dificuldade</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DificuldadeDropdownlist" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="DificuldadeRequiredFieldValidator" runat="server"
                        ControlToValidate="DificuldadeDropdownlist" ErrorMessage="Seleciona a dificuldade"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Tema">
                <asp:TableCell>Tema</asp:TableCell>
                <asp:TableCell ID="TableCell2">
                    <asp:DropDownList ID="TemaDropdownlist" runat="server" DataSourceID="ShowPerguntas2"
                        DataTextField="descricao" DataValueField="descricao">
                    </asp:DropDownList>
                    <asp:EntityDataSource ID="ShowPerguntas2" runat="server" ConnectionString="name=Show_de_PerguntasEntities" 
                                DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
                                EntitySetName="Temas" Select="it.[descricao]"></asp:EntityDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TemaDropdownlist"
                        ErrorMessage="Selecionar o tema"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaCorreta">
                <asp:TableCell>Alternativa Correta</asp:TableCell>
                <asp:TableCell ID="TableCell3">
                    <asp:TextBox ID="AlternativaCorretaTextBox" Width="800" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AlternativaCorretaTextBox"
                        ErrorMessage="Preencher a alternativa"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta1">
                <asp:TableCell>Alternativa Incorreta 1</asp:TableCell>
                <asp:TableCell ID="TableCell4">
                    <asp:TextBox ID="AlternativaIncorreta1TextBox" Width="800" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AlternativaIncorreta1TextBox"
                        ErrorMessage="Preencher a alternativa"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta2">
                <asp:TableCell>Alternativa Incorreta 2</asp:TableCell>
                <asp:TableCell ID="TableCell5">
                    <asp:TextBox ID="AlternativaIncorreta2TextBox" Width="800" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AlternativaIncorreta2TextBox"
                        ErrorMessage="Preencher a alternativa"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta3">
                <asp:TableCell>Alternativa Incorreta 3</asp:TableCell>
                <asp:TableCell ID="TableCell6">
                    <asp:TextBox ID="AlternativaIncorreta3TextBox" Width="800" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AlternativaIncorreta3TextBox"
                        ErrorMessage="Preencher a alternativa"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="AlternativaIncorreta4">
                <asp:TableCell>Alternativa Incorreta 4</asp:TableCell>
                <asp:TableCell ID="TableCell7">
                    <asp:TextBox ID="AlternativaIncorreta4TextBox" Width="800" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AlternativaIncorreta4TextBox"
                        ErrorMessage="Preencher a alternativa"></asp:RequiredFieldValidator>
                </asp:TableCell>
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
        
        
        
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="IdPergunta" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="IdPergunta" HeaderText="IdPergunta" ReadOnly="True" 
                    SortExpression="IdPergunta" />
                <asp:BoundField DataField="enunciado" HeaderText="enunciado" 
                    SortExpression="enunciado" />
                <asp:BoundField DataField="dificuldade" HeaderText="dificuldade" 
                    SortExpression="dificuldade" />
                <asp:BoundField DataField="alternativaCorreta" HeaderText="alternativaCorreta" 
                    SortExpression="alternativaCorreta" />
                <asp:BoundField DataField="alternativaIncorreta1" 
                    HeaderText="alternativaIncorreta1" SortExpression="alternativaIncorreta1" />
                <asp:BoundField DataField="alternativaIncorreta2" 
                    HeaderText="alternativaIncorreta2" SortExpression="alternativaIncorreta2" />
                <asp:BoundField DataField="alternativaIncorreta3" 
                    HeaderText="alternativaIncorreta3" SortExpression="alternativaIncorreta3" />
                <asp:BoundField DataField="alternativaIncorreta4" 
                    HeaderText="alternativaIncorreta4" SortExpression="alternativaIncorreta4" />
                <asp:BoundField DataField="vezesRespondidaAltCorreta" 
                    HeaderText="vezesRespondidaAltCorreta" 
                    SortExpression="vezesRespondidaAltCorreta" />
                <asp:BoundField DataField="vezesRespondidaAltIncorreta1" 
                    HeaderText="vezesRespondidaAltIncorreta1" 
                    SortExpression="vezesRespondidaAltIncorreta1" />
                <asp:BoundField DataField="vezesRespondidaAltIncorreta2" 
                    HeaderText="vezesRespondidaAltIncorreta2" 
                    SortExpression="vezesRespondidaAltIncorreta2" />
                <asp:BoundField DataField="vezesRespondidaAltIncorreta3" 
                    HeaderText="vezesRespondidaAltIncorreta3" 
                    SortExpression="vezesRespondidaAltIncorreta3" />
                <asp:BoundField DataField="vezesRespondidaAltIncorreta4" 
                    HeaderText="vezesRespondidaAltIncorreta4" 
                    SortExpression="vezesRespondidaAltIncorreta4" />
                <asp:BoundField DataField="Tema_IdTema" HeaderText="Tema_IdTema" 
                    SortExpression="Tema_IdTema" />
            </Columns>
        </asp:GridView>
        <%--<asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=Show_de_PerguntasEntities" 
            DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
            EnableUpdate="True" EntitySetName="Perguntas" Where="it.[IdPergunta] = 2" >
        </asp:EntityDataSource>--%>
<%// Where="it.[IdPergunta] = @teste"
  //   <whereparameters>
  //      <asp:ControlParameter ControlID="costLimit" DbType="Int32" 
  //        DefaultValue=<%id Name="teste" PropertyName="Text" />
  //      </whereparameters> %>
    </div>
    </form>
</body>
</html>
