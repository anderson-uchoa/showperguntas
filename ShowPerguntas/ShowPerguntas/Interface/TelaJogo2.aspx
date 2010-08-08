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
    
    <asp:Table ID="RodadaTable" runat="server" HorizontalAlign="Center" 
            BorderStyle="Solid">
            <asp:TableRow>
                <asp:TableCell BorderStyle="Solid" Width="280px" Height="80" VerticalAlign="Top" HorizontalAlign="Left"><asp:Label ID="enunciado" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>TIMER</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="celulaAlternativas"><asp:RadioButtonList ID="alternativas" runat="server" ></asp:RadioButtonList></asp:TableCell>
                <asp:TableCell>        
                    <asp:Table ID="auxiliarTable" runat="server">
                        <asp:TableRow>
                            <asp:TableCell>Pontuação atual</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="RemoverAlternativasB" runat="server" onclick="RemoverAlternativas_Click" Text="Remover Alternativas" Width="150px"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="MostrarEstatisticasB" runat="server" onclick="MostrarEstatisticas_Click" Text="Mostrar Estatísticas" Width="150px"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="PularB" runat="server" onclick="Pular_Click" Text="Pular" Width="150px"/></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Button ID="Responder" runat="server" onclick="Responder_Click" Text="Responder" Width="280px" /></asp:TableCell>
            </asp:TableRow>

        </asp:Table>

    </div>
    </form>
</body>
</html>
