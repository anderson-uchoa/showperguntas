<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPerguntas.aspx.cs" Inherits="ShowPerguntas.Interface.ListarPerguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listar Perguntas</title>    
</head>
<body>
    <form id="form1" runat="server">
        <div>    
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                AllowSorting="True" AutoGenerateColumns="False" 
                DataSourceID="ShowPerguntas" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="IdPergunta" HeaderText="IdPergunta" ReadOnly="True" 
                        SortExpression="IdPergunta" />
                    <asp:BoundField DataField="enunciado" HeaderText="enunciado" ReadOnly="True" 
                        SortExpression="enunciado" />
                    <asp:BoundField DataField="dificuldade" HeaderText="dificuldade" 
                        ReadOnly="True" SortExpression="dificuldade" />
                    <asp:CommandField 
                        ShowSelectButton="True" SortExpression="IdPergunta" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="ShowPerguntas" runat="server"
                ConnectionString="name=Show_de_PerguntasEntities" 
                DefaultContainerName="Show_de_PerguntasEntities" EnableFlattening="False" 
                EntitySetName="Perguntas" 
                Select="it.[IdPergunta], it.[enunciado], it.[dificuldade]" 
                OrderBy="it.[IdPergunta]">
            </asp:EntityDataSource>
        </div>
        <div>
            <asp:Button ID="Voltar" runat="server" Text="Voltar" OnClick="VoltarButton" />
        </div>    
    </form>
</body>
</html>
