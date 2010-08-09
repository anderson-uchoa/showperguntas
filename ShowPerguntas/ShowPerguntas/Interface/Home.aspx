<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShowPerguntas.Interface.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas - Login</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />

    <script type="text/javascript">
        function loadXMLDoc() {
            
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
           
           
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("myDiv").innerHTML ="abracadabra";
                }
            xmlhttp.open("GET", "demo_get.asp", true);
            xmlhttp.send();
        }
</script>


</head>
<body>
<br />
<div style="text-align: center;">
<asp:Image ID="Logo" runat="server" />
<form id="home" runat="server">
    <br />
    <div class="borda" align="center" style="width: 270px;">
        <asp:Table ID="TableLogin" runat="server" HorizontalAlign="Center" 
            Width="270px" Height="150px" BackColor="#F8F8F8">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell VerticalAlign="Middle"  HorizontalAlign="Center" >
                     <asp:Login ID="Login" runat="server" LoginButtonText="Entrar"
                        OnAuthenticate="Login_Authenticate" UserNameLabelText="Login: " 
                        PasswordLabelText="Senha: " DisplayRememberMe="false" 
                        FailureText="Login ou senha incorretos!" 
                        TitleText="Acesse sua conta!" Width="220px" TitleTextStyle-BorderStyle="NotSet" 
                        Orientation="Vertical" TextBoxStyle-CssClass="campologin" TitleTextStyle-Wrap="True">
                        <LayoutTemplate>
                            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="0" style="width:220px;">
                                            <tr>
                                                <td align="center" colspan="2">
                                                    Acesse sua conta!</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Login: </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="UserName" runat="server" CssClass="campologin" Width="130px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                        ToolTip="User Name is required." ValidationGroup="Login">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Senha: </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Password" runat="server" CssClass="campologin" 
                                                        TextMode="Password" Width="130px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                                        ToolTip="Password is required." ValidationGroup="Login">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Entrar" 
                                                        ValidationGroup="Login" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <TextBoxStyle Width="130px" />
                        <TitleTextStyle Wrap="True"></TitleTextStyle>
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
                <asp:Button ID="BotaoCadastro" runat="server" Text="Cadastre-se agora!" OnClick="BotaoCadastroClick" Width="150" /> 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Quer saber como o jogo funciona?</asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="BotaoRegras" runat="server" Text="Consulte as regras!" OnClick="BotaoRegrasClick" Width="150"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>    
</form>       

</div>
</body>
</html>
