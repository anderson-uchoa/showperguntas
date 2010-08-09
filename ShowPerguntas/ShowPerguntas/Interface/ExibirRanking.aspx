<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExibirRanking.aspx.cs" Inherits="ShowPerguntas.Interface.ExibirRanking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show de Perguntas - Ranking</title>
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>
<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Ranking dos jogadores</h1>
    <form id="form1" runat="server">   
        <div class="borda" align="center" style="width: 450px;"> 
        <asp:Table ID="Table1" runat=server HorizontalAlign="Center" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px" Width="450">  <asp:TableRow>
            <asp:TableCell>
    <div>
        <asp:GridView ID="Ranking" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="IdRanking" BorderColor="#F8F8F8" DataSourceID="ShowPerguntas" OnRowDataBound="AtualizarPosicao" HorizontalAlign="Center" Width="350" HeaderStyle-CssClass="header" RowStyle-CssClass="header" HeaderStyle-BackColor="#7A9BC5" HeaderStyle-ForeColor="White" CellSpacing="-1" CellPadding="2">
            <Columns>
                <asp:TemplateField HeaderText="Posição" >
                    <ItemTemplate>
                        <asp:Label ID="Posicao" runat="server" Text='<%# posicao %>' >
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Jogador" SortExpression="Usuario"> 
                  <ItemTemplate> 
                    <asp:Label ID="Tema" runat="server"  Text='<%# Eval("Usuario.nome") %>' > 
                    </asp:Label> 
                  </ItemTemplate> 
                </asp:TemplateField> 
                <asp:BoundField DataField="pontuacaoMaxima" HeaderText="Pontuação" 
                    SortExpression="pontuacaoMaxima" ReadOnly="True"/>                
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="ShowPerguntas" runat="server" 
            ConnectionString="name=Show_de_PerguntasEntities" 
            DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
            EntitySetName="Rankings" Include="Usuario" OrderBy="it.pontuacaoMaxima DESC LIMIT 10">
        </asp:EntityDataSource>
    </div>

             </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="Zerar" runat="server" Text="Zerar Ranking" />
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <br />
                <asp:Button ID="Voltar" runat="server" Text="Voltar" onclick="Voltar_Click"/>    
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>
    </form>
</body>
</html>
