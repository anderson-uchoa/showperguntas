<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciadorJogadores.aspx.cs" Inherits="ShowPerguntas.Interface.GerenciadorJogadores" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" DataSourceID="ShowPerguntasSiteMap" 
            MaximumDynamicDisplayLevels="1">
        </asp:Menu>
        <asp:SiteMapDataSource ID="ShowPerguntasSiteMap" runat="server" 
            StartFromCurrentNode="true" />
    </div>
    <div>
        <asp:Button ID="buttoVoltar" runat="server" OnClick="Voltar" Text="Voltar" />
    </div>
    </form>
</body>
</html>
