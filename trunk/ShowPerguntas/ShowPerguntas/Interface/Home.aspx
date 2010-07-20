<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShowPerguntas.Interface.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas</title>
</head>
<body>
    <form id="home" runat="server">
    <div>
        <asp:Login ID="Login" runat="server" LoginButtonText="Entrar" OnAuthenticate="Login_Authenticate" UserNameLabelText="Login" PasswordLabelText="Senha" DisplayRememberMe="false" >
        </asp:Login>
    </div>
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
        EntitySetName="Usuarios">
    </asp:EntityDataSource>
    </form>    
</body>
</html>
