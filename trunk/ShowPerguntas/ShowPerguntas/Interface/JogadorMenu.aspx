<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JogadorMenu.aspx.cs" Inherits="ShowPerguntas.Interface.JogadorMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% if (Session["tipo"].Equals("Administrador")) 
   {
       Response.Redirect("~/Interface/AdministradorMenu.aspx");
   } 
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Jogador</title>
</head>
<body>
    <form id="Jogador" runat="server">
    Ola Jogador! <a href="logout.aspx">Sair</a>

    <div>
        
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Novo Jogo" />
        
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Mostrar Ranking" />
        
    </div>
    </form>
</body>
</html>
