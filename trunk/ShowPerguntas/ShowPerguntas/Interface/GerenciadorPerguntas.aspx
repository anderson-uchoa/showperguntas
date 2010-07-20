<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciadorPerguntas.aspx.cs" Inherits="ShowPerguntas.Interface.GerenciadorPerguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdPergunta" 
        DataSourceID="ShowPerguntas">
        <Columns>
            <asp:BoundField DataField="enunciado" HeaderText="enunciado" 
                SortExpression="enunciado" />
            <asp:BoundField DataField="dificuldade" HeaderText="dificuldade" 
                SortExpression="dificuldade" />
            <asp:BoundField DataField="Tema_IdTema" HeaderText="Tema_IdTema" 
                SortExpression="Tema_IdTema" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="ShowPerguntas" runat="server" 
        ConnectionString="name=Show_de_PerguntasEntities" 
        DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
        EntitySetName="Perguntas">
    </asp:EntityDataSource>
    </form>
</body>
</html>
