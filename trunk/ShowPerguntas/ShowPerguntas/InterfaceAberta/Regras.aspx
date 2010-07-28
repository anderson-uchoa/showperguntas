<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regras.aspx.cs" Inherits="ShowPerguntas.InterfaceAberta.Regras" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Regras do Jogo</title>
</head>
<body>
    <form id="form1" runat="server">&nbsp;<div>
        <asp:table ID="TabelaRegras" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="300px">
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <h1>REGRAS SHOW DE PERGUNTAS</h1><br/>      
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                </asp:TableCell>
                <asp:TableCell>        
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:table>                
    </div>
    </form>
</body>
</html>
