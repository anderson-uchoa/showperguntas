<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExibirRanking.aspx.cs" Inherits="ShowPerguntas.Interface.ExibirRanking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ranking</title>
</head>
<body>
    <form id="form1" runat="server">    
    <div>
        <asp:GridView ID="Ranking" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="IdRanking" DataSourceID="ShowPerguntas" OnRowDataBound="AtualizarPosicao">
            <Columns>
                <asp:TemplateField HeaderText="Posição" >
                    <ItemTemplate>
                        <asp:Label ID="Posicao" runat="server" Text='<%# posicao %>' >
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Usuario" SortExpression="Usuario"> 
                  <ItemTemplate> 
                    <asp:Label ID="Tema" runat="server"  Text='<%# Eval("Usuario.nome") %>' > 
                    </asp:Label> 
                  </ItemTemplate> 
                </asp:TemplateField> 
                <asp:BoundField DataField="pontuacaoMaxima" HeaderText="pontuacaoMaxima" 
                    SortExpression="pontuacaoMaxima" ReadOnly="True"/>                
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="ShowPerguntas" runat="server" 
            ConnectionString="name=Show_de_PerguntasEntities" 
            DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
            EntitySetName="Rankings" Include="Usuario">
        </asp:EntityDataSource>
    </div>
    </form>
</body>
</html>
