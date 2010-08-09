<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JogadorMenu.aspx.cs" Inherits="ShowPerguntas.Interface.JogadorMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas - Menu principal</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Menu principal</h1>
    <form id="Jogador" runat="server">
        <div class="borda" align="center" style="width: 550px;">
    <asp:Table ID="titulo" runat="server" HorizontalAlign="Center" Width="550px" 
        Height="51px" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px">
        <asp:TableRow >
            <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="novoJogo1" runat="server" onclick="novoJogo_Click" ImageUrl="/Imagens/jogar.png" Width="64" Height="64" AlternateText="Jogar" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Jogar</td></tr></table>
            </asp:TableCell>
            
            <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="mostrarRanking1" runat="server" onclick="mostrarRanking_Click" ImageUrl="/Imagens/raking.png" Width="64" Height="64" AlternateText="Jogar" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Ranking</td></tr></table>
            </asp:TableCell>

            <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="VisualizarPerfil1" runat="server" onclick="VisualizarPerfil_Click" ImageUrl="/Imagens/perfil.png" Width="64" Height="64" AlternateText="Jogar" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Perfil</td></tr></table>
            </asp:TableCell>

             <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="BotaoRegras1" runat="server" onclick="BotaoRegrasClick" ImageUrl="/Imagens/regras.png" Width="64" Height="64" AlternateText="Jogar" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Regras</td></tr></table>
            </asp:TableCell>


        </asp:TableRow>
    </asp:Table>
    </div>
    <br />
    <div class="borda" align="center" style="width: 550px;">
       <asp:Table ID="Table2" runat="server" HorizontalAlign="Center" Width="550px" 
        Height="51px" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px">
        <asp:TableRow >

                    <asp:TableCell HorizontalAlign="Center">Olá <%Response.Write(Session["nome"]);%>! Divirta-se no jogo!</asp:TableCell>
                    <asp:TableCell><asp:Button runat="server" Text="Sair" OnClick="Sair_Click"/></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>

    </form>
</body>
</html>
