<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JogadorMenu.aspx.cs" Inherits="ShowPerguntas.Interface.JogadorMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Jogador</title>
</head>
<body>
<br />
<br />
<br />
    <form id="Jogador" runat="server">
    &nbsp;&nbsp;
    <asp:Table ID="titulo" runat="server" HorizontalAlign="Center" Width="537px" 
        Height="51px">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">Olá <% Response.Write(Session["nome"]); %> Divirta-se no jogo!</asp:TableCell>
            <asp:TableCell Width="30"><a href="logout.aspx">Sair</a></asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <asp:Table BorderStyle="Solid" HorizontalAlign="Center" runat="server" Width="537px">
        <asp:TableRow >
            <asp:TableCell HorizontalAlign="Center">
                <asp:Button ID="novoJogo" runat="server" onclick="novoJogo_Click" Text="Novo Jogo" Width="150px" />
            </asp:TableCell>
            <asp:TableCell Width="30"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Button ID="mostrarRanking" runat="server" onclick="mostrarRanking_Click" Text="Mostrar Ranking" Width="150px" />
            </asp:TableCell>
            <asp:TableCell Width="30"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Button ID="VisualizarPerfil" runat="server" Text="Visualizar Perfil" 
                    onclick="VisualizarPerfil_Click" Width="150px"/>    
            </asp:TableCell>
            <asp:TableCell Width="30"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Button ID="BotaoRegras" runat="server" Text="Visualizar Regras" 
                    onclick="BotaoRegrasClick" Width="150px"/>    
            </asp:TableCell>
            <asp:TableCell Width="30"></asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    </form>
</body>
</html>
