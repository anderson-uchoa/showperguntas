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
    <form ID="Form1" runat="Server" >
    <div>
        <asp:Table ID="Tabela" runat="server" HorizontalAlign="Center">
        </asp:Table>
        <asp:Button ID="Responder" runat="server" onclick="Responder_Click" Text="Responder" />
    </div>
    </form>
</body>
</html>
