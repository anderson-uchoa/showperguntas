<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciadorPerguntas.aspx.cs" Inherits="ShowPerguntas.Interface.GerenciadorPerguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<a href="logout.aspx">Sair</a>
    <form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" DataSourceID="ShowPerguntasSiteMap" 
        MaximumDynamicDisplayLevels="1">
    </asp:Menu>
    <asp:SiteMapDataSource ID="ShowPerguntasSiteMap" runat="server" 
        StartFromCurrentNode="true" />
    </form>
</body>
</html>
