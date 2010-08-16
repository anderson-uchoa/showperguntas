<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPerguntas.aspx.cs" Inherits="ShowPerguntas.Interface.ListarPerguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listar Perguntas</title>    
    
    <link rel="stylesheet" type="text/css" href="/Estilo.css" />
</head>
<body>

<br />
<div style="text-align: center;">
<img src="/Imagens/logo.png" />
</div>
<h1 style="text-align:center">Lista de perguntas</h1>


    <form id="form1" runat="server">
       <div class="borda" align="center" style="width: 450px;">   

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdPergunta" 
                DataSourceID="perguntas"
                onselectedindexchanged="Selecionar" 
                OnRowDataBound="MudarDificuldade"
                RowHeaderColumn="IdPergunta"
                BorderColor="#F8F8F8" HeaderStyle-BackColor="#7A9BC5" HeaderStyle-ForeColor="White" CellSpacing="-1" CellPadding="2" BackColor="#F8F8F8">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IdPergunta" HeaderText="Id Pergunta" 
                        SortExpression="IdPergunta" ReadOnly="True" />
                    <asp:BoundField DataField="enunciado" HeaderText="enunciado" 
                        SortExpression="enunciado" />
                    <asp:BoundField DataField="dificuldade" HeaderText="dificuldade" 
                        SortExpression="dificuldade" />
                    <asp:TemplateField HeaderText="Temas" SortExpression="Temas"> 
                      <ItemTemplate> 
                        <asp:Label ID="Tema" runat="server" Text='<%# Eval("Tema.descricao") %>'> 
                        </asp:Label> 
                      </ItemTemplate> 
                    </asp:TemplateField> 
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="perguntas" runat="server" 
                ConnectionString="name=Show_de_PerguntasEntities" 
                DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
                EntitySetName="Perguntas" Include="Tema">
            </asp:EntityDataSource>
<asp:Table ID="Table1" runat="server" HorizontalAlign="Center" BackColor="#F8F8F8" BorderColor="#F8F8F8" 
            BorderWidth="15px" Width="450">  
    <asp:TableRow>
            <asp:TableCell>
        <asp:Button ID="Voltar" runat="server" Text="Voltar" OnClick="VoltarButton" />
        </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
        </div>
        </div>
    </form>
</body>
</html>
