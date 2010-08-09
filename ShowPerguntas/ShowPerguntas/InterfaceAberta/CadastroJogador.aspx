<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroJogador.aspx.cs" Inherits="ShowPerguntas.Interface.CadastroJogador" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Show de Perguntas - Cadastro</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Preencha os campos abaixo</h1>
    <form id="form1" runat="server">
    <div class="borda" align="center" style="width: 450px;">
    <asp:Table ID="TabelaCadastroJogador" runat="server" Width="450px"
            HorizontalAlign="Center" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px">
            <asp:TableRow ID="NomeJogador">
                <asp:TableCell HorizontalAlign="Right">Nome: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="nomeTextBox" runat="server" CssClass="campo"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="NomeRequiredFieldValidator" runat="server" ControlToValidate="nomeTextBox" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Sobrenome">
                <asp:TableCell HorizontalAlign="Right">Sobrenome: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="sobrenomeTextBox" runat="server" CssClass="campo"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SobreNomeRequiredFieldValidator" runat="server" ControlToValidate="sobrenomeTextBox" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow> 
            <asp:TableRow ID="Login">
                <asp:TableCell HorizontalAlign="Right">Login: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="loginTextBox" runat="server" CssClass="campologin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator" runat="server" ControlToValidate="loginTextBox" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>  
            <asp:TableRow ID="Errodologin">
                <asp:TableCell></asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="ErroLogin" runat="server" Text="Login já existe!" Visible="false" 
                            BorderStyle="None" Font-Bold="True" ForeColor="Red"></asp:TextBox>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Senha">
                <asp:TableCell HorizontalAlign="Right">Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="senhaTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SenhaRequiredFieldValidator" runat="server" ControlToValidate="senhaTextBox" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>     
            <asp:TableRow ID="ConfirmeSenha">
                <asp:TableCell HorizontalAlign="Right">Confirme Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="confirmeSenhaTextBox" runat="server" TextMode="Password" CssClass="campologin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="confirmeSenhaTextBox" 
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell> </asp:TableCell>
                <asp:TableCell>
                    <asp:CompareValidator ID="ErroConfirmaSenha" ControlToValidate="senhaTextBox" ControlToCompare="confirmeSenhaTextBox" 
                        ForeColor="red" Text="A senha não corresponde à senha de confirmação!" runat="server"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Right">    
                    <asp:Button ID="SalvarJogador" runat="server" onclick="SalvarJogador_C" Text="Salvar" />
                    <asp:Button ID="Button1" runat="server" onclick="Cancelar_C" Text="Cancelar" CausesValidation="false" />
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
    </div>
    </form>
</body>
</html>
