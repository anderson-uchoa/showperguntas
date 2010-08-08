<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorMenu.aspx.cs" Inherits="ShowPerguntas.Interface.AdministradorMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Administrador</title>
</head>
<body>
    <form id="Administrador" runat="server">
    Ola administrador! <a href="logout.aspx">Sair</a>&nbsp;
        <div>            
            <asp:Menu ID="Menu1" runat="server" DataSourceID="ShowPerguntasSiteMap" MaximumDynamicDisplayLevels="1" >
            </asp:Menu>
            <asp:SiteMapDataSource ID="ShowPerguntasSiteMap" runat="server" StartFromCurrentNode="true"/>
        </div>
    </form>
</body>
</html>
