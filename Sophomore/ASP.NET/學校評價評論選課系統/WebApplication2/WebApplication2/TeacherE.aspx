<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherE.aspx.cs" Inherits="WebApplication2.TeacherE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1388px;
        }
        .auto-style5 {
            width: 462px;
        }
    </style>
</head>
<body style="background-color:#daeef3;">
    <form id="form1" runat="server">
    <div>
  
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td  align="right" class="auto-style5">
    
                    <asp:Label ID="userLabel" runat="server" Font-Names="微軟正黑體" Font-Size="17pt"></asp:Label>
                    <asp:Label ID="userTitleLabel" runat="server" Font-Size="17pt"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-bottom: 0px" Text="返回" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
    
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style5">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="課程名稱" HeaderText="課程名稱" SortExpression="課程名稱" />
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" />
                <asp:BoundField DataField="評論者" HeaderText="評論者" SortExpression="評論者" />
                <asp:BoundField DataField="評分" HeaderText="評分" SortExpression="評分" />
                <asp:BoundField DataField="內文" HeaderText="內文" SortExpression="內文" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                </td>

                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT 課程評論.開課代碼, 課程評論.編號, 課程評論.評論者, 課程評論.評分, 課程評論.內文, 課程.課程名稱 FROM 課程評論 INNER JOIN 課程 ON 課程評論.開課代碼 = 課程.開課代碼 "></asp:SqlDataSource>
    </form>
</body>
</html>
