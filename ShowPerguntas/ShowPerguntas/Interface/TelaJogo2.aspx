<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaJogo2.aspx.cs" Inherits="ShowPerguntas.Interface.TelaJogo2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pergunta</title>
    <style type="text/css">
        #form1
        {
            height: 264px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body style="height: 271px">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="enunciado" runat="server" Text="Label"></asp:Label>
        <br />
    
    </div>
    <asp:RadioButtonList ID="alternativas" runat="server">
    </asp:RadioButtonList>
    <asp:Button ID="Responder" runat="server" onclick="Responder_Click" Text="Responder" />
    <asp:Button ID="Button1" runat="server" onclick="RemoverAlternativas_Click" Text="Remover Alternativas" />
    <asp:Button ID="Button2" runat="server" onclick="MostrarEstatisticas_Click" Text="Mostrar Estatísticas" />
    <asp:Button ID="Button3" runat="server" onclick="Pular_Click" Text="Pular" />
    </form>
</body>
</html>
