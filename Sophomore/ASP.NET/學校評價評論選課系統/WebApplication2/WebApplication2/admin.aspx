<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication2.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 25px;
        }
    </style>
</head>
<body style="background-color:#daeef3;">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查看檢舉"  BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt"  />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="預選名單"   BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2" align="right">
                    <asp:Label ID="userLabel" runat="server" Font-Names="微軟正黑體" Font-Size="17pt"></asp:Label>
                    <asp:Label ID="userTitleLabel" runat="server" Font-Size="17pt"></asp:Label>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回"  BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt"  />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="評論編號" HeaderText="評論編號" SortExpression="評論編號" />
                <asp:BoundField DataField="檢舉人" HeaderText="檢舉人" SortExpression="檢舉人" />
                <asp:BoundField DataField="檢舉內容" HeaderText="檢舉內容" SortExpression="檢舉內容" />
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="評論者" HeaderText="評論者" SortExpression="評論者" />
                <asp:BoundField DataField="評分" HeaderText="評分" SortExpression="評分" />
                <asp:BoundField DataField="內文" HeaderText="內文" SortExpression="內文" />
                <asp:ButtonField ButtonType="Button" CommandName="DLEREPORT" Text="刪除檢舉" />
                <asp:ButtonField ButtonType="Button" CommandName="DELComment" Text="刪除評論" />
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
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table style="width:100%; font-size: 20px; font-family: 微軟正黑體;">
                <tr>
                    <td>預選名單</td>
                    <td>課程名單</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                                <asp:BoundField DataField="學年" HeaderText="學年" SortExpression="學年" />
                                <asp:BoundField DataField="學期" HeaderText="學期" SortExpression="學期" />
                                <asp:BoundField DataField="學號" HeaderText="學號" SortExpression="學號" />
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
                    <td>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                                <asp:BoundField DataField="學年" HeaderText="學年" SortExpression="學年" />
                                <asp:BoundField DataField="學期" HeaderText="學期" SortExpression="學期" />
                                <asp:BoundField DataField="學號" HeaderText="學號" SortExpression="學號" />
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
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="抽選"  BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT 檢舉.評論編號, 檢舉.檢舉人, 檢舉.檢舉內容, 課程評論.開課代碼, 課程評論.編號, 課程評論.評論者, 課程評論.評分, 課程評論.內文 FROM 檢舉 INNER JOIN 課程評論 ON 檢舉.評論編號 = 課程評論.編號"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT * FROM [欲選名單]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT * FROM [修課名單]"></asp:SqlDataSource>
        <p>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
        </p>
    </form>
</body>
</html>
