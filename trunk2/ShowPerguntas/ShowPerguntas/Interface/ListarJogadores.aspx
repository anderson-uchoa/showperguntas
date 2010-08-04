<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarJogadores.aspx.cs" Inherits="ShowPerguntas.Interface.ListarJogadores" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">    
    <div>
        Buscar: 
        <asp:TextBox ID="Buscar" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="IdUsuario" DataSourceID="ShowPerguntas">
            <Columns>
                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" 
                    SortExpression="IdUsuario" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="sobrenome" HeaderText="sobrenome" 
                    SortExpression="sobrenome" />
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                <asp:BoundField DataField="senha" HeaderText="senha" SortExpression="senha" />
                <asp:BoundField DataField="dataCadastro" HeaderText="dataCadastro" 
                    SortExpression="dataCadastro" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="ShowPerguntas" runat="server" 
            ConnectionString="name=Show_de_PerguntasEntities" 
            DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
            EntitySetName="Usuarios" Where="it.IdUsuario > 0">
        </asp:EntityDataSource>
    </div>
    <div>
        <asp:Button ID="buttoVoltar" runat="server" OnClick="Voltar" Text="Voltar" />
    </div>
    </form>
</body>
</html>
