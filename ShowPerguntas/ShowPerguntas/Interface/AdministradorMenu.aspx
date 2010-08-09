<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorMenu.aspx.cs" Inherits="ShowPerguntas.Interface.AdministradorMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Administrador</title>
</head>
<body>
    <form id="Administrador" runat="server">
    <div> 
    Ola administrador!
    </div>
    <div>
        <asp:Table ID="Administrador_Menu" runat="server">
         <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="GerenciarPerguntas" runat="server" Text="Gerenciar Perguntas" OnClick="GerenciarPerguntas_Click"/>
            </asp:TableCell>
         </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="GerenciarJogadores" runat="server" Text="Gerenciar Jogadores" OnClick="GerenciarJogadores_Click"/>                
            </asp:TableCell>
         </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="Sair" runat="server" Text="Sair" OnClick="Sair_Click"/>             
            </asp:TableCell>
         </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
