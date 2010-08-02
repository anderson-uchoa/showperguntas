<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaJogo1.aspx.cs" Inherits="ShowPerguntas.Interface.TelaJogo1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        <br />
        <h1>
        <asp:Label ID="Pontuacao" runat="server" Text="Label"></asp:Label></h1>
        <br />
        <asp:Label ID="Dificuldade" runat="server" Text="Dificuldade:"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Button ID="NovoJogoB" runat="server" Text="Novo Jogo" onclick="NovoJogo_Click" />
        <asp:Button ID="ContinuarB" runat="server" onclick="ContinuarResp_Click" Text="Silvio, Proxima Pergunta" />
        <asp:Button ID="PararB" runat="server" Text="Nah... Sou maricas" onclick="Parar_Click" />
    
    </div>
    </form>
</body>
</html>
