<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPergunta.aspx.cs" Inherits="ShowPerguntas.Interface.MostrarPergunta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="140px">
        </asp:CheckBoxList>
    
    </div>
    <asp:CheckBoxList ID="CheckBoxList3" runat="server">
    </asp:CheckBoxList>
    <asp:CheckBoxList ID="CheckBoxList4" runat="server">
    </asp:CheckBoxList>
    <asp:CheckBoxList ID="CheckBoxList5" runat="server">
    </asp:CheckBoxList>
    <asp:CheckBoxList ID="CheckBoxList2" runat="server">
    </asp:CheckBoxList>
    </form>
</body>
</html>
