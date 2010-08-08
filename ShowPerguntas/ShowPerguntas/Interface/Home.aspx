<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShowPerguntas.Interface.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<asp:Image ID="Logo" runat="server" />
<form id="home" runat="server">
    <br />
    <div class="borda" align="center">
        <asp:Table ID="TableLogin" runat="server" HorizontalAlign="Center" 
            Width="250px" Height="150px" BackColor="#F8F8F8">
            <asp:TableRow>
                <asp:TableCell VerticalAlign="Middle"  HorizontalAlign="Center" >
                    <asp:Login ID="Login" runat="server" LoginButtonText="Entrar"
                        OnAuthenticate="Login_Authenticate" UserNameLabelText="Login: " 
                        PasswordLabelText="Senha: " DisplayRememberMe="false" 
                        FailureText="Login ou senha incorretos!" 
                        TitleText="Acesse sua conta!" Width="220px" TitleTextStyle-BorderStyle="NotSet" Orientation="Vertical" LoginButtonStyle-CssClass="botao" TextBoxStyle-CssClass="campo">
                        <TextBoxStyle Width="130px" />
                    </asp:Login>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <br />
    <asp:Table ID="tabelaOpcoes" runat="server" HorizontalAlign="Center" 
         Width="385px" Height="75px">
        <asp:TableRow>
            <asp:TableCell>Ainda não é um jogador cadastrado?</asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="BotaoCadastro" runat="server" Text="Cadastre-se Agora!" OnClick="BotaoCadastroClick" Width="150" /> 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Quer saber como o Jogo funciona?</asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="BotaoRegras" runat="server" Text="Consulte as Regras!" OnClick="BotaoRegrasClick" Width="150"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</form>       
     
</body>
</html>
