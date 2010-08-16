<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciadorRanking.aspx.cs" Inherits="ShowPerguntas.Interface.GerenciadorRanking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas - Gerenciador de Ranking</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Administração de ranking</h1>

     <form id="form1" runat="server">
     <div class="borda" align="center" style="width: 250px;">
        <asp:Table ID="Gerenciar_Ranking" runat="server" Width="250px" 
        BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px">
            <asp:TableRow>
          

            <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="Listar" runat="server" onclick="Ranking_Click" ImageUrl="/Imagens/listar_jogador.png" Width="64" Height="64" AlternateText="Exibir Ranking" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Listar</td></tr></table>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                <br />
                    <asp:Button ID="buttonVoltar" runat="server" OnClick="Voltar" Text="Voltar" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>        
    </div>
    </form>
</body>
</html>
