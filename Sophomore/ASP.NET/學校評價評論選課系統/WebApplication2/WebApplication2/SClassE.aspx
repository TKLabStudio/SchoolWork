<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SClassE.aspx.cs" Inherits="WebApplication2.SClassE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
            width: 417px;
        }
        .auto-style2 {
            height: 26px;
            width: 417px;
        }
        .auto-style3 {
            width: 1251px;
        }
        .auto-style4 {
            height: 20px;
            width: 416px;
        }
        .auto-style9 {
            height: 26px;
            width: 416px;
        }
        .auto-style11 {
            width: 416px;
        }
        .auto-style12 {
            width: 417px;
        }
    </style>
</head>
<body style="background-color:#daeef3;">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td align="right">
                    <asp:Label ID="userLabel" runat="server" Font-Names="微軟正黑體" Font-Size="17pt"></asp:Label>
                    <asp:Label ID="userTitleLabel" runat="server" Font-Size="17pt"></asp:Label>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-bottom: 0px" Text="返回" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView2_RowCommand" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="課程名稱" HeaderText="課程名稱" SortExpression="課程名稱" />
                <asp:BoundField DataField="學年" HeaderText="學年" SortExpression="學年" />
                <asp:BoundField DataField="學期" HeaderText="學期" SortExpression="學期" />
                <asp:BoundField DataField="姓名" HeaderText="教師姓名" SortExpression="姓名" />
                <asp:BoundField DataField="教師代碼" HeaderText="教師代碼" SortExpression="教師代碼" />
                <asp:HyperLinkField DataNavigateUrlFields="連結" HeaderText="課程大綱" Text="連結" />
                <asp:ButtonField HeaderText="評論" CommandName="GridRows" Text="按鈕" />
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT 修課名單.*, 課程.*, 教師.姓名 FROM 修課名單 INNER JOIN 課程 ON 修課名單.開課代碼 = 課程.開課代碼 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼"></asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style3" style="font-size: 20px; font-family: 微軟正黑體;">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">開課代碼:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">課程名稱:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">教師名稱:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style9">評分:<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">評論:<asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="258px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="發表評論"  BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt"/>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
