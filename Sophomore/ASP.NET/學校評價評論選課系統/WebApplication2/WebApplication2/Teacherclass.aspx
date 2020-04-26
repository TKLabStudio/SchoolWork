<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacherclass.aspx.cs" Inherits="WebApplication2.Teacherclass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {}
        .auto-style3 {
            width: 1132px;
        }
        .auto-style7 {
            width: 376px;
        }
        .auto-style8 {
            width: 377px;
        }
    </style>
</head>
<body style="background-color:#daeef3;">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1" align="right">
                    <asp:Label ID="userLabel" runat="server" Font-Names="微軟正黑體" Font-Size="17pt"></asp:Label>
                    <asp:Label ID="userTitleLabel" runat="server" Font-Size="17pt"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-bottom: 0px" Text="返回" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                </td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="教師代碼" HeaderText="教師代碼" SortExpression="教師代碼" />
                <asp:BoundField DataField="課程名稱" HeaderText="課程名稱" SortExpression="課程名稱" />
                <asp:BoundField DataField="學年" HeaderText="學年" SortExpression="學年" />
                <asp:BoundField DataField="學期" HeaderText="學期" SortExpression="學期" />
                <asp:BoundField DataField="學制" HeaderText="學制" SortExpression="學制" />
                <asp:BoundField DataField="開課學院" HeaderText="開課學院" SortExpression="開課學院" />
                <asp:BoundField DataField="開課系所" HeaderText="開課系所" SortExpression="開課系所" />
                <asp:BoundField DataField="修課上限" HeaderText="修課上限" SortExpression="修課上限" />
                <asp:BoundField DataField="修課下限" HeaderText="修課下限" SortExpression="修課下限" />
                <asp:BoundField DataField="學分" HeaderText="學分" SortExpression="學分" />
                <asp:BoundField DataField="學時" HeaderText="學時" SortExpression="學時" />
                <asp:BoundField DataField="修別" HeaderText="修別" SortExpression="修別" />
                <asp:BoundField DataField="開課班級" HeaderText="開課班級" SortExpression="開課班級" />
                <asp:BoundField DataField="上課教室" HeaderText="上課教室" SortExpression="上課教室" />
                <asp:BoundField DataField="上課時間" HeaderText="上課時間" SortExpression="上課時間" />
                <asp:BoundField DataField="選課人數" HeaderText="選課人數" SortExpression="選課人數" />
                <asp:BoundField DataField="備註" HeaderText="備註" SortExpression="備註" />
                <asp:HyperLinkField DataNavigateUrlFields="連結" HeaderText="課程大綱" Text="課程大綱" />
                <asp:ButtonField ButtonType="Button" CommandName="qwe" HeaderText="修改課程大綱" Text="修改" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT * FROM [課程]"></asp:SqlDataSource>
    
    </div>
        <p>
            &nbsp;</p >
        <asp:Panel align="center" ID="Panel1" runat="server">
        </asp:Panel>
        <p>
            &nbsp;</p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td align="center" class="auto-style8">
            <asp:Label ID="Label1" runat="server" style="font-size: 20px; font-family: 微軟正黑體;"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td align="center" class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="274px"></asp:TextBox>
            <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" Text="上傳" />
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
