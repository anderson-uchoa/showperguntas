<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaJogo3.aspx.cs" Inherits="ShowPerguntas.Interface.TelaJogo3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Acertou ou Errou?</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:Table runat="server" HorizontalAlign="Center" ID="imgFimDeJogo">
        <asp:TableRow>
            <asp:TableCell>
                        <asp:Image ID="Imagem" runat="server"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
    <h3>
    <asp:Table runat="server" ID="dadosFimDaPartida" HorizontalAlign="Center" Visible="false">
        <asp:TableRow>
            <asp:TableCell Width="250px">Pontuação Final</asp:TableCell>
            <asp:TableCell Width="100px"><asp:Label runat="server" ID="pontuacaoFinalLabel"></asp:Label></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Sua classificação no ranking é:</asp:TableCell>
            <asp:TableCell><asp:Label runat="server" ID="posicaoRankingLabel"></asp:Label></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label runat="server" ID="msgParabensEntroNoRankingLabel" Text="Parabéns você é um dos 20 melhores!" Visible="false"></asp:Label></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </h3>

    <asp:Table runat="server" ID="ContinuarButton" HorizontalAlign="Center" Visible="false">
        <asp:TableRow>
            <asp:TableCell><asp:Button ID="Continuar" runat="server" onclick="Continuar_Click" Text="Continuar"/></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
    </asp:Table>


    
    
    </form>
</body>
</html>
