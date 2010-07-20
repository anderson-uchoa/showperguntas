<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorMenu.aspx.cs" Inherits="ShowPerguntas.Interface.AdministradorMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<% if (Session["tipo"].Equals("Jogador")) 
   {
       Response.Redirect("~/Interface/JogadorMenu.aspx");
   }
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Administrador</title>
</head>
<body>
    Ola administrador!
    <form id="Administrador" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Gerenciar Perguntas" 
                onclick="Button1_Click"  />
        </div>    
    </form>
</body>
</html>
