<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Elctive.aspx.cs" Inherits="WebApplication2.Elctive" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style7 {
            height: 86px;
            width: 582px;
        }
        .auto-style6 {
            height: 86px;
        }
        .auto-style8 {
            height: 64px;
            width: 582px;
        }
        .auto-style5 {
            height: 64px;
        }
        .auto-style9 {
            width: 582px;
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
            </table>
    
            <table style="width:100%; font-size: 20px; font-family: 微軟正黑體;" >
                <tr>
                    <td class="auto-style7">科系與班級<br /> 學院:<asp:TextBox ID="SearchTextBox" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                        <br /> 學制:<asp:TextBox ID="SearchTextBox0" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                        <br />
                        系所:<asp:TextBox ID="SearchTextBox1" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                        <br />
                        班級:<asp:TextBox ID="SearchTextBox2" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style6">時間<br /> 星期:<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="一">星期一</asp:ListItem>
                        <asp:ListItem Value="二">星期二</asp:ListItem>
                        <asp:ListItem Value="三">星期三</asp:ListItem>
                        <asp:ListItem Value="四">星期四</asp:ListItem>
                        <asp:ListItem Value="五">星期五</asp:ListItem>
                        <asp:ListItem Value="六">星期六</asp:ListItem>
                        <asp:ListItem Value="日">星期日</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        開始節次:<asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="42px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value=" 01">01</asp:ListItem>
                            <asp:ListItem Value=" 02">02</asp:ListItem>
                            <asp:ListItem Value=" 03">03</asp:ListItem>
                            <asp:ListItem Value=" 04">04</asp:ListItem>
                            <asp:ListItem Value=" 05">05</asp:ListItem>
                            <asp:ListItem Value=" 06">06</asp:ListItem>
                            <asp:ListItem Value=" 07">07</asp:ListItem>
                            <asp:ListItem Value=" 08">08</asp:ListItem>
                            <asp:ListItem Value=" 09">09</asp:ListItem>
                            <asp:ListItem Value=" 10">10</asp:ListItem>
                            <asp:ListItem Value=" 11">11</asp:ListItem>
                            <asp:ListItem Value=" 12">12</asp:ListItem>
                            <asp:ListItem Value=" 13">13</asp:ListItem>
                            <asp:ListItem Value=" 14">14</asp:ListItem>
                            <asp:ListItem Value=" 15">15</asp:ListItem>
                            <asp:ListItem Value=" 16">16</asp:ListItem>
                            <asp:ListItem Value=" 17">17</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        結束節次:<asp:DropDownList ID="DropDownList3" runat="server" Height="19px" Width="45px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="-01">1</asp:ListItem>
                            <asp:ListItem Value="-02">2</asp:ListItem>
                            <asp:ListItem Value="-03">3</asp:ListItem>
                            <asp:ListItem Value="-04">4</asp:ListItem>
                            <asp:ListItem Value="-05">5</asp:ListItem>
                            <asp:ListItem Value="-06">6</asp:ListItem>
                            <asp:ListItem Value="-07">7</asp:ListItem>
                            <asp:ListItem Value="-08">8</asp:ListItem>
                            <asp:ListItem Value="-09">9</asp:ListItem>
                            <asp:ListItem Value="-10">10</asp:ListItem>
                            <asp:ListItem Value="-11">11</asp:ListItem>
                            <asp:ListItem Value="-12">12</asp:ListItem>
                            <asp:ListItem Value="-13">13</asp:ListItem>
                            <asp:ListItem Value="-14">14</asp:ListItem>
                            <asp:ListItem Value="-15">15</asp:ListItem>
                            <asp:ListItem Value="-16">16</asp:ListItem>
                            <asp:ListItem Value="-17">17</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">課程<br /> 課程名稱:<asp:TextBox ID="SearchTextBox3" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                        <br />
                        開課代碼:<asp:TextBox ID="SearchTextBox4" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="衝堂過濾" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">教師<br /> 教師名稱:<asp:TextBox ID="SearchTextBox5" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                        <br />
                        教師代碼:<asp:TextBox ID="SearchTextBox6" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="SearchButton1" runat="server" Text="開始查詢" OnClick="SearchButton1_Click1" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                    </td>
                </tr>
            </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT 教師.姓名, 課程.* FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="教師代碼" HeaderText="教師代碼" SortExpression="教師代碼" />
                <asp:BoundField DataField="姓名" HeaderText="教師姓名" SortExpression="姓名" />
                <asp:BoundField DataField="課程名稱" HeaderText="課程名稱" SortExpression="課程名稱" />
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
                <asp:HyperLinkField DataNavigateUrlFields="連結" HeaderText="課程大綱" Text="課程大綱" />
                <asp:TemplateField HeaderText="狀態" SortExpression="qwe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="加退選" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="GridRows" Text="加選" OnClick="Btn_ch_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
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
    </form>
</body>
</html>
