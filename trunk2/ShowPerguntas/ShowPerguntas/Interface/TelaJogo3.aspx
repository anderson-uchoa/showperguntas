﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaJogo3.aspx.cs" Inherits="ShowPerguntas.Interface.TelaJogo3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Acertou ou Errou?</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Imagem" runat="server"/>
        <br />
        <br />
        <asp:Button ID="Continuar" runat="server" onclick="Continuar_Click" Text="Continuar" />
        <br />
    
    </div>
    </form>
</body>
</html>