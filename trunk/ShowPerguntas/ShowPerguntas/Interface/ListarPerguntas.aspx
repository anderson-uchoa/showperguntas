<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPerguntas.aspx.cs" Inherits="ShowPerguntas.Interface.ListarPerguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listar Perguntas</title>    
</head>
<body>
    <form id="form1" runat="server">
        <div>    

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdPergunta" 
                DataSourceID="perguntas" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                RowHeaderColumn="IdPergunta">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IdPergunta" HeaderText="IdPergunta" 
                        SortExpression="IdPergunta" ReadOnly="True" />
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
                    <asp:BoundField DataField="Tema_IdTema" HeaderText="Tema_IdTema" 
                        SortExpression="Tema_IdTema" />
                    <asp:BoundField DataField="Tema" HeaderText="Tema" SortExpression="Tema" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="perguntas" runat="server" 
                ConnectionString="name=Show_de_PerguntasEntities" 
                DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
                EntitySetName="Perguntas">
            </asp:EntityDataSource>
        </div>
        <div>
            <asp:Button ID="Voltar" runat="server" Text="Voltar" OnClick="VoltarButton" />

            <br />
            <br />

        </div>    
    </form>
</body>
</html>
