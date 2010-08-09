<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="ShowPerguntas.Interface.Perfil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Show de Perguntas - Perfil de <%Response.Write(Session["nome"]);%></title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Perfil de <%Response.Write(Session["nome"]);%></h1>
    <form id="form1" runat="server">
    <div class="borda" align="center" style="width: 450px;">
    <asp:Table ID="PerfilJogador" runat="server" HorizontalAlign="Center" Enabled="false" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px" Width="450px">
            <asp:TableRow ID="Nome">
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
            <asp:TableRow ID="Login" >
                <asp:TableCell HorizontalAlign="Right">Login: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="loginTextBox" runat="server" Enabled="false" CssClass="campologin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator" runat="server" ControlToValidate="loginTextBox" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>  
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">Usuário desde:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="UsuarioDesdeTextBox" runat="server" Enabled="false" CssClass="campologin"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:CheckBox ID="AlterarSenhaCheckBox" runat="server" Text=" Alterar Senha" TextAlign="Right" Checked="false" AutoPostBack="True" OnCheckedChanged="AlterarSenha_C" Visible="false"/></asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow ID="senhaAntiga" Visible="false">
                <asp:TableCell HorizontalAlign="Right">Senha antiga: </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="senhaAntigaTextBox" runat="server" CssClass="campologin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="senhaAntigaRequiredFieldValidator" runat="server" ControlToValidate="senhaAntigaTextBox" 
                        ErrorMessage="*"></asp:RequiredFieldValidator> 
                </asp:TableCell>    
            </asp:TableRow>

            <asp:TableRow>
                    <asp:TableCell><asp:TextBox ID="senhaIncorretaAviso" runat="server" Text="Senha Inválida" visible="false" ForeColor="Red" BorderStyle="None"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow ID="NovaSenha" Visible="false">
                <asp:TableCell HorizontalAlign="Right">Nova Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="novaSenhaTextBox" runat="server" TextMode="Password" CssClass="campologin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="novaSenhaRequiredFieldValidator" runat="server" ControlToValidate="novaSenhaTextBox" 
                                    ErrorMessage="*"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>     
            
            <asp:TableRow ID="ConfirmeNovaSenha" Visible="false">
                <asp:TableCell HorizontalAlign="Right">Confirme Nova Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="confirmeNovaSenhaTextBox" runat="server" TextMode="Password" CssClass="campologin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="confirmeNovaSenhaRequiredFieldValidator" runat="server" ControlToValidate="confirmeNovaSenhaTextBox" 
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="CompareValidator" Visible="false">
                <asp:TableCell>
                    <asp:CompareValidator ID="comfirmaSenhaIgual" ControlToValidate="novaSenhaTextBox" ControlToCompare="confirmeNovaSenhaTextBox" 
                        ForeColor="red" Text="A senha não corresponde à senha de confirmação!" runat="server"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
   
    <asp:Table ID="botoesEditarRemoverVoltar" runat="server" BorderColor="#F8F8F8" BorderWidth="15px" HorizontalAlign="Center" BackColor="#F8F8F8" Visible="true" Width="450px">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center"><asp:Button ID="Editar" runat="server" onclick="Editar_C" Text="Editar" CausesValidation="false" />
                <asp:Button ID="RemoverPerfil" runat="server" onclick="RemoverPerfil_C" Text="Remover perfil" CausesValidation="false" />
                <asp:Button ID="Voltar" runat="server" onclick="Voltar_C" Text="Voltar" CausesValidation="false"/>
            </asp:TableCell>
        </asp:TableRow>
   </asp:Table>

    <asp:Table ID="botoesSalvarCancelar" runat="server" HorizontalAlign="Center" Visible="false" BorderColor="#F8F8F8" BorderWidth="15px" BackColor="#F8F8F8" Width="450px">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center"><asp:Button ID="SalvarJogador" runat="server" onclick="SalvarJogador_C" Text="Salvar" />
            <asp:Button ID="Cancelar" runat="server" onclick="Cancelar_C" Text="Cancelar" CausesValidation="false" /></asp:TableCell>
        </asp:TableRow>
   </asp:Table>
   <asp:Table ID="ConfirmaçãoRemoverPerfil" runat="server" HorizontalAlign="Center" Visible="false" BorderColor="#F8F8F8" BorderWidth="15px" BackColor="#F8F8F8" Width="450px">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center"  >Tem certeza que deseja remover seu perfil?</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">Essa ação não poderá ser desfeita!</asp:TableCell> 
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center" BackColor="#F8F8F8">
            <asp:TableCell>
                <asp:Button ID="confirmarRemoverPerfil" runat="server" onclick="confirmarRemoverPerfil_C" Text="Confirma" CausesValidation="false" />
                <asp:Button ID="cancelaConfirmarRemoverPerfil" runat="server" onclick="cancelaConfirmarRemoverPerfil_C" Text="Cancela" CausesValidation="false" />
            <br />
            </asp:TableCell>
        </asp:TableRow>
   </asp:Table>
   
   
    </div>
    </form>
</body>
</html>
