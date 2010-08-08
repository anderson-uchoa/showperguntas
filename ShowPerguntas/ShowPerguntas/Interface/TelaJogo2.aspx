<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaJogo2.aspx.cs" Inherits="ShowPerguntas.Interface.TelaJogo2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pergunta</title>
    <style type="text/css">
        #form1
        {
            height: 264px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body style="height: 271px">
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer runat="server" id="Timer1" interval="1000" ontick="Timer1_Tick" />
        <asp:UpdatePanel runat="server" id="TimePanel" UpdateMode="Always">
            <Triggers>
                <asp:AsyncPostBackTrigger controlid="Timer1" eventname="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" id="ContadorL" />
            </ContentTemplate>
        </asp:UpdatePanel>
    
        <br />
        <asp:Label ID="enunciado" runat="server" Text="Label"></asp:Label>
        <br />
    
    </div>
    <asp:RadioButtonList ID="alternativas" runat="server" Width="497px">
    </asp:RadioButtonList>
    <asp:Button ID="Responder" runat="server" onclick="Responder_Click" Text="Responder" />
    <asp:Button ID="RemoverAlternativasB" runat="server" onclick="RemoverAlternativas_Click" Text="Remover Alternativas" />
    <asp:Button ID="MostrarEstatisticasB" runat="server" onclick="MostrarEstatisticas_Click" Text="Mostrar Estatísticas" />
    <asp:Button ID="PularB" runat="server" onclick="Pular_Click" Text="Pular" />
    </form>
</body>
</html>
