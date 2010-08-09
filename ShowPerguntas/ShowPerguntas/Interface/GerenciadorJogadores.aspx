<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciadorJogadores.aspx.cs" Inherits="ShowPerguntas.Interface.GerenciadorJogadores" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Gerenciar_Jogadores" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="buttonListar" runat="server" Text="Listar Jogadores" 
                        onclick="ListarJogadores_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="buttonVoltar" runat="server" OnClick="Voltar" Text="Voltar" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="buttonSair" runat="server" Text="Sair" onclick="Sair_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>        
    </div>
    </form>
</body>
</html>
