<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" BorderStyle="Dashed" Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger" Text="HAHAHA"></asp:Label>
        <p>
            <asp:Image ID="Image1" runat="server" Height="50%" ImageUrl="~/01.jpg" Width="50%" />
        </p>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="https://tklab.club">TK Lab</asp:LinkButton>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="需要多少食物:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="需要多少水:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="問問章魚哥" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="問問神奇海螺" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>海綿寶寶</asp:ListItem>
                <asp:ListItem>派大星</asp:ListItem>
                <asp:ListItem>章魚哥</asp:ListItem>
                <asp:ListItem>珊迪</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="海超人萬歲" />
        </p>
        <p>
            &nbsp;</p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/02.jpg" OnClick="ImageButton1_Click" />
    </form>
</body>
</html>
