<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciadorPerguntas.aspx.cs" Inherits="ShowPerguntas.Interface.GerenciadorPerguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas - Gerenciador de perguntas</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Gerenciador de perguntas</h1>
    <form id="form1" runat="server">
    <div class="borda" align="center" style="width: 350px;">        
        <asp:Table ID="Gerenciar_Perguntas" runat="server" Width="350px" 
        BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px">
            <asp:TableRow>
                
            <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="Adicionar" runat="server" onclick="AdicionarPergunta_Click" ImageUrl="/Imagens/adicionar.png" Width="64" Height="64" AlternateText="Adicionar pergunta" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Adicionar</td></tr></table>
            </asp:TableCell>

            <asp:TableCell HorizontalAlign="Center">
                <table width="64" cellspacing="0" cellpadding="0"><tr><td>
                <asp:ImageButton ID="Listar" runat="server" onclick="ListarPerguntas_Click" ImageUrl="/Imagens/listar.png" Width="64" Height="64" AlternateText="Listar perguntas" />
            </td></tr><tr><td style="font-size: 16px; text-align: center;">Listar</td></tr></table>
            </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" ColumnSpan="2">
                <br />
                    <asp:Button ID="buttonVoltar" runat="server" OnClick="Voltar" Text="Voltar" />
                </asp:TableCell>
            </asp:TableRow>            
        </asp:Table>
    </div>     
    </form>
</body>
</html>
