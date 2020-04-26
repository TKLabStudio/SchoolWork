<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classroom.aspx.cs" Inherits="WebApplication2.classroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:#daeef3;">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td align="right">
                    <asp:Label ID="userLabel" runat="server" Font-Names="微軟正黑體" Font-Size="17pt"></asp:Label>
                    <asp:Label ID="userTitleLabel" runat="server" Font-Size="17pt"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-bottom: 0px" Text="返回" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
    
                </td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="Panel1" runat="server" style="font-size: 20px; font-family: 微軟正黑體;">
            學年:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;學期:<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>上</asp:ListItem>
                <asp:ListItem>下</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="BUT1" runat="server" OnClick="BUT1_Click" Text="查詢" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
        </asp:Panel>
    
    </div>
        <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="節次" HeaderText="節次" SortExpression="節次" />
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="星期一" HeaderText="星期一" SortExpression="星期一" HtmlEncode="False" />
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="星期二" HeaderText="星期二" SortExpression="星期二" HtmlEncode="False" />
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="星期三" HeaderText="星期三" SortExpression="星期三" HtmlEncode="False" />
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="星期四" HeaderText="星期四" SortExpression="星期四" HtmlEncode="False" />
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="星期五" HeaderText="星期五" SortExpression="星期五" HtmlEncode="False" />
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="星期六" HeaderText="星期六" SortExpression="星期六" HtmlEncode="False" />
                <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="星期日" HeaderText="星期日" SortExpression="星期日" HtmlEncode="False" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT * FROM [暫存]"></asp:SqlDataSource>
    </form>
    </body>
</html>
