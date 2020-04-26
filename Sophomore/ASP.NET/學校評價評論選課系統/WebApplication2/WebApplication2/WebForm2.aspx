<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:#daeef3;">
    <form id="form1" runat="server">
    <div  style="text-align: center";>
    
        <div style="text-align:right";>
            <asp:Label ID="Label4" runat="server" Font-Names="微软雅黑" Font-Size="17pt" ForeColor="Black"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-bottom: 0px" Text="返回" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
        </div>
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="帳號:" Font-Size="20pt" Font-Names="微软雅黑"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="175px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="密碼:" Font-Size="20pt" Font-Names="微软雅黑"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="25px" Width="175px"></asp:TextBox>
        <br/><br/>
    
        <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="30pt" ForeColor="#CC0000"></asp:Label>
        <br/><br/>
        <div  style="text-align: center";>
        <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="登入" BackColor="#215968" ForeColor="White" Height="50px" Width="101px" Font-Names="微软雅黑" Font-Size="20pt" />
        </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [管理員]">
        </asp:SqlDataSource>
    </form>
</body>
</html>
