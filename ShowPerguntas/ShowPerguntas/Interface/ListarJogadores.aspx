<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarJogadores.aspx.cs" Inherits="ShowPerguntas.Interface.ListarJogadores" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Listar Jogadores</title>    
    
    <link rel="stylesheet" type="text/css" href="/Estilo.css" /></head>
<body>

<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Lista de jogadores</h1>

    <form id="form1" runat="server">    
     <div class="borda" align="center" style="width: 450px;">
             <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px" Width="450">  
    <asp:TableRow>
    <asp:TableCell>



        Buscar: 
        <asp:TextBox ID="Buscar" runat="server"></asp:TextBox>
        <asp:Button ID="buttonBuscar" runat="server" Text="Buscar" 
            onclick="Buscar_Click" />
        <asp:Button ID="buttonLimpar" runat="server" Text="Limpar" 
            onclick="Limpar_Click" />

        </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
    <asp:TableCell>
        </asp:TableCell>
        </asp:TableRow>

                    <asp:TableRow>
    <asp:TableCell>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="IdUsuario" DataSourceID="ShowPerguntas" AllowPaging="True" 
            AllowSorting="True" onselectedindexchanged="SelecionarJogador"
            BorderColor="#F8F8F8" HeaderStyle-BackColor="#7A9BC5" HeaderStyle-ForeColor="White" CellSpacing="-1" CellPadding="2" BackColor="#F8F8F8">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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



            

        <asp:Button ID="buttoVoltar" runat="server" OnClick="Voltar" Text="Voltar" />
        </asp:TableCell>
        </asp:TableRow>
        </asp:Table>

    </div>
    </form>
</body>
</html>
