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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT 學生資料.座號, 學生資料.姓名, 學生資料.生日, 分數.國文分數, 分數.數學分數, 分數.英文分數 FROM 分數 INNER JOIN 學生資料 ON 分數.座號 = 學生資料.座號"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="座號" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="座號" HeaderText="座號" ReadOnly="True" SortExpression="座號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="生日" HeaderText="生日" SortExpression="生日" />
                <asp:BoundField DataField="國文分數" HeaderText="國文分數" SortExpression="國文分數" />
                <asp:BoundField DataField="數學分數" HeaderText="數學分數" SortExpression="數學分數" />
                <asp:BoundField DataField="英文分數" HeaderText="英文分數" SortExpression="英文分數" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT 學生資料.座號, 學生資料.姓名, 分數.國文分數, 分數.數學分數, 分數.英文分數 FROM 分數 INNER JOIN 學生資料 ON 分數.座號 = 學生資料.座號 WHERE (分數.國文分數 = 100) OR (分數.數學分數 = 100) OR (分數.英文分數 = 100)"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="座號" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="座號" HeaderText="座號" ReadOnly="True" SortExpression="座號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="國文分數" HeaderText="國文分數" SortExpression="國文分數" />
                <asp:BoundField DataField="數學分數" HeaderText="數學分數" SortExpression="數學分數" />
                <asp:BoundField DataField="英文分數" HeaderText="英文分數" SortExpression="英文分數" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
