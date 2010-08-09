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

                    <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="Facil" runat="server" ImageUrl="/Imagens/facil.png" Width="64" Height="64" AlternateText="Jogar" onclick="facil_click" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Fácil</td></tr></table>
            </asp:TableCell>

                    <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="Medio" runat="server"  ImageUrl="/Imagens/medio.png" Width="64" Height="64" AlternateText="Jogar" onclick="medio_click" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Médio</td></tr></table>
            </asp:TableCell>

                    <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="Dificil" runat="server" ImageUrl="/Imagens/dificil.png" Width="64" Height="64" AlternateText="Jogar" onclick="dificil_click "/>
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Difícil</td></tr></table>
            </asp:TableCell>

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
    
   
    <asp:Table runat="server" HorizontalAlign="Center" Height="81px">
    <asp:TableRow>
        <asp:TableCell>
        <asp:Button ID="ContinuarB" runat="server" onclick="ContinuarResp_Click" Text="Continuar" />
        <asp:Button ID="PararB" runat="server" Text="Parar" onclick="Parar_Click" />
        </asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    </div>
    </form>
</body>
</html>
