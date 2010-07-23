<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroJogador.aspx.cs" Inherits="ShowPerguntas.Interface.CadastroJogador" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <table>
            <tr>
                <td>Nome: </td>
                <td>
                    <asp:TextBox ID="nome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Sobrenome: </td>
                <td>
                    <asp:TextBox ID="sobrenome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Login: </td>
                <td>
                    <asp:TextBox ID="login" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                    <td> 
                    <asp:TextBox ID="ErroLogin" runat="server" Text="Login já existe!" Visible="false" 
                            BorderStyle="None" Font-Bold="True" ForeColor="Red"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td>
                    <asp:TextBox ID="senha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Confirme senha:</td>
                <td>
                    <asp:TextBox ID="confirmeSenha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                    <td> 
                    <asp:TextBox ID="ErroSenha" runat="server" Text="Opa, senha errada!" Visible="false" 
                            BorderStyle="None" Font-Bold="True" ForeColor="Red"></asp:TextBox>
                    </td>
            </tr>

        </table>
        <asp:Button ID="SalvarJogador" runat="server" onclick="SalvarJogador_C" Text="Salvar" />
        <asp:Button ID="Cancelar" runat="server" onclick="Cancelar_C" Text="Cancelar" />
    </div>
    </form>
</body>
</html>
