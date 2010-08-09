<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaJogo1.aspx.cs" Inherits="ShowPerguntas.Interface.TelaJogo1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
    <form id="form1" runat="server">
    <div class="borda" align="center" style="width: 450px;"> 
    <asp:Table ID="escolhaDificuldadeTable" runat="server" HorizontalAlign="Center" 
        Visible="true" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px" Width="450">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center"><asp:Label ID="Dificuldade" runat="server" Text="Dificuldade:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
    <asp:Table ID="PontuacaoTable" runat="server" HorizontalAlign="Center" Visible="false">
    <asp:TableRow>
        <asp:TableCell><h1><asp:Label ID="RodadaL" runat="server" Text=""></asp:Label> </h1></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell><h1><asp:Label ID="PontuacaoL" runat="server" Text=""></asp:Label></h1></asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    
        <asp:Button ID="Button1" runat="server" Text="Fácil" />
        <asp:Button ID="Button3" runat="server" Text="Médio" />
        <asp:Button ID="Button2" runat="server" Text="Difícl" />
    
    <asp:Table runat="server" HorizontalAlign="Center" Height="81px">
    <asp:TableRow>
        <asp:TableCell><asp:Button ID="NovoJogoB" runat="server" Text="Novo Jogo" onclick="NovoJogo_Click" />
        <asp:Button ID="ContinuarB" runat="server" onclick="ContinuarResp_Click" Text="Silvio, Proxima Pergunta" />
        <asp:Button ID="PararB" runat="server" Text="Nah... Sou maricas" onclick="Parar_Click" /></asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    </div>
    </form>
</body>
</html>
