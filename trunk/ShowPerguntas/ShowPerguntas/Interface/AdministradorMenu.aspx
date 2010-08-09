<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorMenu.aspx.cs" Inherits="ShowPerguntas.Interface.AdministradorMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas - Menu de administração</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Menu de administração</h1>
    <form id="Administrador" runat="server">
        <div class="borda" align="center" style="width: 550px;">
        <asp:Table ID="Administrador_Menu" runat="server" Width="550px" 
        BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px" HorizontalAlign="Center">
         <asp:TableRow>
   
                     <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="GerenciarPerguntas" runat="server" onclick="GerenciarPerguntas_Click" ImageUrl="/Imagens/perguntas.png" Width="64" Height="64" AlternateText="Gerenciar perguntas" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Perguntas</td></tr></table>
            </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="GerenciarJogadores" runat="server" onclick="GerenciarJogadores_Click" ImageUrl="/Imagens/jogadores.png" Width="64" Height="64" AlternateText="Gerenciar jogadores" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Jogadores</td></tr></table>
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
                    <asp:TableCell HorizontalAlign="Left">Olá <b>Administrador</b>!</asp:TableCell>
                    <asp:TableCell HorizontalAlign="Right"><asp:Button ID="Sair" runat="server" Text="Sair" OnClick="Sair_Click"/> </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>
    </form>
</body>
</html>
