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
        <h1>Você já ganhou por volta de: D$
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> &nbsp;(dinheiros)</h1>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Silvio, Proxima Pergunta" />
    
        <asp:Button ID="Button2" runat="server" Text="Nah... Sou maricas" 
            onclick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
