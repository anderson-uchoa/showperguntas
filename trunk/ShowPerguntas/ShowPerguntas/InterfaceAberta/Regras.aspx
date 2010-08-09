<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regras.aspx.cs" Inherits="ShowPerguntas.InterfaceAberta.Regras" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas - Regras do Jogo</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Regras do jogo</h1>
    <form id="form1" runat="server">
    <div class="borda" align="center" style="width: 450px;">
        <asp:table ID="TabelaRegras" runat="server" Width="450px"
            HorizontalAlign="Center" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px">
            <asp:TableRow>
                <asp:TableCell>        
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        <asp:TableRow HorizontalAlign="right">
            <asp:TableCell><asp:Button ID="Voltar" runat="server" Text="Voltar" onclick="Voltar_Click"/></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
</html>
