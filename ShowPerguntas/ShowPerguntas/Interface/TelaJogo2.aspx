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
        

    <asp:Table ID="RodadaTable" runat="server" HorizontalAlign="Center" 
            BorderStyle="Solid" Width="511px">
            <asp:TableRow>
                <asp:TableCell BorderStyle="Solid" Width="280px" Height="80" VerticalAlign="Top" HorizontalAlign="Left"><asp:Label ID="enunciado" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell Width="155px"><div id="timelabel"></div>
                <script type="text/javascript">


        var leave =<%=seconds %>;

        CounterTimer();
        var interv=setInterval(CounterTimer,1000);
        //var interv2=setInterval(TempoAcabou,1000);

        function CounterTimer()
        {         
            var day = Math.floor(leave / ( 60 * 60 * 24))
            var hour = Math.floor(leave / 3600) - (day * 24)
            var minute = Math.floor(leave / 60) - (day * 24 *60) - (hour * 60)
            var second = Math.floor(leave) - (day * 24 *60*60) - (hour * 60 * 60) - (minute*60)

            hour=hour<10 ? "0" + hour : hour;
            minute=minute<10 ? "0" + minute : minute;
            second=second<10 ? "0" + second : second;

            var remain=second + " segundo(s)";
            leave=leave-1;

            document.getElementById("timelabel").innerHTML=remain;
            
        }
        /*
        function TempoAcabou()
        {
            if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
            else
            {// code for IE6, IE5
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange=function()
            {
                if (xmlhttp.readyState==4 && xmlhttp.status==200)
                {
                    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
                }
            }
            xmlhttp.open("POST","TelaJogo2.aspx",true);
            xmlhttp.setRequestHeader("Content-type","Sistema de Perguntas/Nao sei");
            xmlhttp.send("status=true");
        }   */
        

        </script>
                
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>Pontuação atual: <asp:Label runat="server" ID="pontuacao"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="celulaAlternativas"><asp:RadioButtonList ID="alternativas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ativarResposta"></asp:RadioButtonList></asp:TableCell>
                <asp:TableCell>        
                    <asp:Table ID="auxiliarTable" runat="server">
                        
                        <asp:TableRow>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="RemoverAlternativasB" runat="server" onclick="RemoverAlternativas_Click" Text="Remover Alternativas" Width="150px"/><asp:Label runat="server" ID="qtdeRemoverAlternativas"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="MostrarEstatisticasB" runat="server" onclick="MostrarEstatisticas_Click" Text="Mostrar Estatísticas" Width="150px"/><asp:Label runat="server" ID="qtdeMostrarEstatisticas"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell><asp:Button ID="PularB" runat="server" onclick="Pular_Click" Text="Pular" Width="150px"/><asp:Label runat="server" ID="qtdePular"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Button ID="ResponderButton" runat="server" onclick="Responder_Click" Text="Responder" Enabled="false" Width="280px" /></asp:TableCell>
            </asp:TableRow>

        </asp:Table>

    </div>
    </form>
</body>
</html>
