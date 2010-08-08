<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="ShowPerguntas.Interface.Perfil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Table ID="PerfilJogador" runat="server" HorizontalAlign="Center" Enabled="false">
            <asp:TableRow ID="Nome" >
                <asp:TableCell Width="145px">Nome: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="nomeTextBox" runat="server" Width="150px"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="NomeRequiredFieldValidator" runat="server" ControlToValidate="nomeTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="Sobrenome">
                <asp:TableCell>Sobrenome: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="sobrenomeTextBox" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SobreNomeRequiredFieldValidator" runat="server" ControlToValidate="sobrenomeTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow> 
            <asp:TableRow ID="Login" >
                <asp:TableCell Width="145px">Login: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="loginTextBox" runat="server" Enabled="false" ForeColor="Black" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator" runat="server" ControlToValidate="loginTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>  
            <asp:TableRow>
                <asp:TableCell Width="145px">Usuário desde:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="UsuarioDesdeTextBox" runat="server" Width="150px"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="145px"></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="AlterarSenhaCheckBox" runat="server" Text="Alterar Senha" TextAlign="Right" Checked="false" AutoPostBack="True" OnCheckedChanged="AlterarSenha_C" Visible="false"/></asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow ID="senhaAntiga" Visible="false">
                <asp:TableCell Width="145px">Senha antiga: </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="senhaAntigaTextBox" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="senhaAntigaRequiredFieldValidator" runat="server" ControlToValidate="senhaAntigaTextBox" 
                        ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                </asp:TableCell>    
            </asp:TableRow>

            <asp:TableRow>
                    <asp:TableCell Width="145px"></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="senhaIncorretaAviso" runat="server" Text="Senha Inválida" visible="false" ForeColor="Red" BorderStyle="None"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow ID="NovaSenha" Visible="false">
                <asp:TableCell Width="145px">Nova Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="novaSenhaTextBox" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="novaSenhaRequiredFieldValidator" runat="server" ControlToValidate="novaSenhaTextBox" 
                                    ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator> 
                    </asp:TableCell>
            </asp:TableRow>     
            
            <asp:TableRow ID="ConfirmeNovaSenha" Visible="false">
                <asp:TableCell Width="145px">Confirme Nova Senha: </asp:TableCell>
                    <asp:TableCell> 
                        <asp:TextBox ID="confirmeNovaSenhaTextBox" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="confirmeNovaSenhaRequiredFieldValidator" runat="server" ControlToValidate="confirmeNovaSenhaTextBox" 
                        ErrorMessage="Esse campo deve ser preenchido!"></asp:RequiredFieldValidator>
                    </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="CompareValidator" Visible="false">
                <asp:TableCell Width="145px"> </asp:TableCell>
                <asp:TableCell>
                    <asp:CompareValidator ID="comfirmaSenhaIgual" ControlToValidate="novaSenhaTextBox" ControlToCompare="confirmeNovaSenhaTextBox" 
                        ForeColor="red" Text="A senha não corresponde à senha de confirmação!" runat="server"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
   
    <asp:Table ID="botoesEditarRemoverVoltar" runat="server" HorizontalAlign="Center" Visible="true">
        <asp:TableRow>
            <asp:TableCell><asp:Button ID="Editar" runat="server" onclick="Editar_C" Text="Editar" CausesValidation="false" /></asp:TableCell>
            <asp:TableCell><asp:Button ID="RemoverPerfil" runat="server" onclick="RemoverPerfil_C" Text="Remover Perfil" CausesValidation="false" /></asp:TableCell>
            <asp:TableCell><asp:Button ID="Voltar" runat="server" onclick="Voltar_C" Text="Voltar" CausesValidation="false"/></asp:TableCell>
        </asp:TableRow>
   </asp:Table>

    <asp:Table ID="botoesSalvarCancelar" runat="server" HorizontalAlign="Center" Visible="false">
        <asp:TableRow>
            <asp:TableCell><asp:Button ID="SalvarJogador" runat="server" onclick="SalvarJogador_C" Text="Salvar" /></asp:TableCell>
            <asp:TableCell><asp:Button ID="Cancelar" runat="server" onclick="Cancelar_C" Text="Cancelar" CausesValidation="false" /></asp:TableCell>
        </asp:TableRow>
   </asp:Table>
   
   
   
   <asp:Table ID="ConfirmaçãoRemoverPerfil" runat="server" HorizontalAlign="Center" Visible="false">
        <asp:TableRow>
            <asp:TableCell>Tem certeza que deseja remover seu perfil?</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Essa ação não poderá ser desfeita.</asp:TableCell> 
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Button ID="confirmarRemoverPerfil" runat="server" onclick="confirmarRemoverPerfil_C" Text="Confirma" CausesValidation="false" />
                <asp:Button ID="cancelaConfirmarRemoverPerfil" runat="server" onclick="cancelaConfirmarRemoverPerfil_C" Text="Cancela" CausesValidation="false" />
            </asp:TableCell>
        </asp:TableRow>
   </asp:Table>
   
   
    </div>
    </form>
</body>
</html>
