<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroJogador.aspx.cs" Inherits="ShowPerguntas.Interface.CadastroJogador" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Table ID="TabelaCadastroJogador" runat="server" Width="750px">
            <asp:TableRow ID="NomeJogador">
                <asp:TableCell>Nome: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="nomeTextBox" runat="server"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="NomeRequiredFieldValidator" runat="server" ControlToValidate="nomeTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Sobrenome">
                <asp:TableCell>Sobrenome: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="sobrenomeTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SobreNomeRequiredFieldValidator" runat="server" ControlToValidate="sobrenomeTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow> 
            <asp:TableRow ID="Login">
                <asp:TableCell>Login: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="loginTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator" runat="server" ControlToValidate="loginTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
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
                <asp:TableCell>Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="senhaTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SenhaRequiredFieldValidator" runat="server" ControlToValidate="senhaTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>     
            <asp:TableRow ID="ConfirmeSenha">
                <asp:TableCell>Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="confirmeSenhaTextBox" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="confirmeSenhaTextBox" 
                        ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="ErroConfirmaSenha" ControlToValidate="senhaTextBox" ControlToCompare="confirmeSenhaTextBox" 
                        ForeColor="red" Text="A senha não corresponde à senha de confirmação!" runat="server"></asp:CompareValidator>
                    </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
        <asp:Button ID="SalvarJogador" runat="server" onclick="SalvarJogador_C" Text="Salvar" />
        <asp:Button ID="Cancelar" runat="server" onclick="Cancelar_C" Text="Cancelar" CausesValidation="false" />
    </div>
    </form>
</body>
</html>
