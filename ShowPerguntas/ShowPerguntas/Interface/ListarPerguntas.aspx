<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPerguntas.aspx.cs" Inherits="ShowPerguntas.Interface.ListarPerguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listar Perguntas</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
        AllowSorting="true" DataKeyNames="IdPergunta" DataSourceID="ShowPerguntas"
        CssClass="Gridview">
        <Columns>
            <asp:BoundField DataField="enunciado" HeaderText="enunciado" 
                SortExpression="enunciado" />
            <asp:BoundField DataField="dificuldade" HeaderText="dificuldade" 
                SortExpression="dificuldade" />
            <asp:BoundField DataField="Tema_IdTema" HeaderText="Tema_IdTema" 
                SortExpression="Tema_IdTema" />        
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="ShowPerguntas" runat="server" 
        ConnectionString="name=Show_de_PerguntasEntities" 
        DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
        EntitySetName="Perguntas">
    </asp:EntityDataSource>

    </div>
    </form>
</body>
</html>
