<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdicionarPergunta.aspx.cs" Inherits="ShowPerguntas.Interface.AdicionarPergunta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adicionar Nova Pergunta</title>
</head>
<body>
    Preencha todos os campos para adicionar uma nova pergunta:
    <form id="form1" runat="server">
    <div>
        
        <table>
            <tr>
                <td>Enunciado</td><td><input id="Enunciado" type="text" size="128"/></td>
            </tr>
            <tr>
                <td>Tema</td><td><input id="Tema" type="text" size="128"/></td>
            </tr>
            <tr>
                <td>Dificuldade</td><td><input id="Dificuldade" type="text" size="128"/></td>
            </tr>
            <tr>
                <td>Alternativa Correta</td><td><input id="AlternativaCorreta" type="text" size="128"/></td>
            </tr>
            <tr>
                <td>Alternativa Incorreta 1</td><td><input id="AlternativaIncorreta1" type="text" size="128"/></td>
            </tr>
            <tr>
                <td>Alternativa Incorreta 2</td><td><input id="AlternativaIncorreta2" type="text" size="128"/></td>
            </tr>
            <tr>
                <td>Alternativa Incorreta 3</td><td><input id="AlternativaIncorreta3" type="text" size="128"/></td>
            </tr>
            <tr>
                <td>Alternativa Incorreta 4</td><td><input id="AlternativaIncorreta4" type="text" size="128"/></td>
            </tr>
        </table>
        <asp:Button ID="buttonSalvar" runat="server" onclick="Salvar" Text="Salvar" />
        <asp:Button ID="buttonCancelar" runat="server" onclick="Cancelar" Text="Cancelar" />                  
    </div>
    </form>
</body>
</html>
