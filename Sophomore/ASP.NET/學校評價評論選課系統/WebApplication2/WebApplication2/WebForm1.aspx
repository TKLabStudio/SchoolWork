<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
          
            height: 25px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
            width: 531px;
        }
        .auto-style5 {
            height: 64px;
        }
        .auto-style6 {
            height: 86px;
        }
        .auto-style7 {
            height: 86px;
            width: 582px;
        }
        .auto-style8 {
            height: 64px;
            width: 582px;
        }
        .auto-style9 {
            width: 582px;
        }
        .auto-style11 {
            width: 1133px;
            height: 103px;
        }
        .auto-style22 {
            height: 40px;
            }
        .auto-style23 {
            height: 41px;
            }
        .auto-style24 {
            width: 1841px;
        }
        .auto-style28 {
            width: 613px;
        }
        .auto-style29 {
            width: 613px;
            height: 17px;
        }
        .auto-style30 {
            width: 613px;
            height: 20px;
        }
        .auto-style31 {
            width: 1136px;
            height: 194px;
        }
        .auto-style35 {
            height: 64px;
            width: 378px;
        }
        .auto-style38 {
            width: 378px;
        }
        .auto-style47 {
            height: 40px;
            width: 282px;
        }
        .auto-style48 {
            height: 40px;
            width: 283px;
        }
        .auto-style49 {
            height: 41px;
            width: 282px;
        }
        .auto-style50 {
            height: 41px;
            width: 283px;
        }
        .auto-style51 {
            height: 40px;
            width: 89px;
        }
        .auto-style52 {
            height: 41px;
            width: 89px;
        }
        </style>
</head>
<body style="background-color:#daeef3"; >
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%; height: 25px";>
            <tr valign="top">
                <td class="auto-style4" >
                    <asp:DropDownList ID="SearchListDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SearchListDropDownList_SelectedIndexChanged" BackColor="#215968" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="White" Height="35px" Font-Size="16pt" Width="170px" Font-Strikeout="False">
                        <asp:ListItem>查詢</asp:ListItem>
                        <asp:ListItem>開課查詢</asp:ListItem>
                        <asp:ListItem>教室課表查詢</asp:ListItem>
                        <asp:ListItem>課堂與教師評價</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="SDropDownList" runat="server" Visible="False" OnSelectedIndexChanged="SDropDownList_SelectedIndexChanged" AutoPostBack="True" BackColor="#215968" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="White" Height="37px" Font-Size="16pt" Width="150px">
                        <asp:ListItem>學生選單</asp:ListItem>
                        <asp:ListItem>課表查詢</asp:ListItem>
                        <asp:ListItem>選課作業</asp:ListItem>
                        <asp:ListItem>課堂與教師評價</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="TDropDownList" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="TDropDownList_SelectedIndexChanged" BackColor="#215968" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="White" Height="35px" Font-Size="16pt" Width="150px">
                        <asp:ListItem>教師選單</asp:ListItem>
                        <asp:ListItem>上傳課程大綱</asp:ListItem>
                        <asp:ListItem>教室課表</asp:ListItem>
                        <asp:ListItem>課堂評價</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ADropDownList" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="ADropDownList_SelectedIndexChanged" BackColor="#215968" Font-Bold="True" Font-Names="微軟正黑體" ForeColor="White" Height="37px" Font-Size="16pt" Width="150px">
                        <asp:ListItem>管理員選單</asp:ListItem>
                        <asp:ListItem>檢舉內容查詢</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="篩選條件" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" Visible="False" />
                    </td>
                <td class="auto-style2">
                    <asp:Button ID="slistButton" runat="server" OnClick="slistButton_Click" Text="學生登入" Visible="False" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                    <asp:Button ID="alistButton" runat="server" OnClick="alistButton_Click" Text="管理員登入" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" Visible="False" />
                    <asp:Button ID="tlistButton" runat="server" OnClick="tlistButton_Click" Text="教師登入" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" Visible="False" />
                    </td>
                <td class="auto-style3" align="right">
                    <asp:Label ID="userLabel" runat="server" Font-Names="微軟正黑體" Font-Size="17pt"></asp:Label>
                    <asp:Label ID="userTitleLabel" runat="server" Font-Size="17pt"></asp:Label>
                    <asp:Button ID="setButton" runat="server" Text="登出" Visible="False" OnClick="setButton_Click" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                    <br />
                </td>
            </tr>
    
        </table>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table style="border: 5px groove #000000; width:100%; font-size: 20px; font-family: 微軟正黑體;" border="0">
                <tr>
                    <td class="auto-style7" aria-readonly="False">科系與班級<br /> 學院:<asp:TextBox ID="SearchTextBox" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
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
                    <td class="auto-style5">學年期<br /> 學年:<asp:TextBox ID="SearchTextBox7" runat="server" EnableTheming="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
                        <br />
                        學期:<asp:DropDownList ID="DropDownList4" runat="server" Height="19px" Width="45px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>上</asp:ListItem>
                            <asp:ListItem>下</asp:ListItem>
                        </asp:DropDownList>
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
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="auto-style11">
                <tr>
                    <td class="auto-style47" ></td>
                    <td class="auto-style22" width="40%"  align="center" style="border-color: #000000; border-style: dotted dotted none dotted; border-width: 5px;" colspan="3">
                        <asp:Label ID="ERRORLabel1" runat="server" Text="查無資料!" Visible="False" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="20pt" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style48"></td>
                </tr>
                <tr>
                    <td class="auto-style47"></td>
                    <td class="auto-style51"  valign="center" style="border-color: #000000;  border-left-style: dotted; border-width: 5px; font-family: 微軟正黑體; font-size: 20px;">學年:</td>
                    <td class="auto-style48" style="border-color: #000000;   border-width: 5px; font-family: 微軟正黑體; font-size: 20px;" valign="center">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style48" align="right" style="border-color: #000000;  border-right-style: dotted;  border-width: 5px; font-family: 微軟正黑體; font-size: 20px; color: #FF0000;">
                        <asp:Label ID="ERRORLabel2" runat="server" Text="不可為空" Visible="False" Font-Bold="True" ></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49">&nbsp;</td>
                    <td class="auto-style52" style="border-color: #000000;  border-left-style: dotted; border-width: 5px; font-family: 微軟正黑體; font-size: 20px;">學期:</td>
                    <td class="auto-style50" style="border-color: #000000;   border-width: 5px; font-family: 微軟正黑體; font-size: 20px;">
                        <asp:DropDownList ID="DropDownList5" runat="server" Height="19px" Width="45px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>上</asp:ListItem>
                            <asp:ListItem>下</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style50" align="right" style="border-color: #000000; border-right-style: dotted;  border-width: 5px; font-family: 微軟正黑體; font-size: 20px; color: #FF0000;">
                        <asp:Label ID="ERRORLabel3" runat="server" Text="不可為空" Visible="False" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style49">&nbsp;</td>
                    <td class="auto-style52" style="border-color: #000000; border-left-style: dotted; border-width: 5px ;font-family: 微軟正黑體; font-size: 20px;">教室:</td>
                    <td class="auto-style50" style="border-color: #000000;  border-width: 5px ;font-family: 微軟正黑體; font-size: 20px;">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style50" align="right" style="border-color: #000000; border-right-style: dotted;  border-width: 5px; font-family: 微軟正黑體; font-size: 20px; color: #FF0000;">
                        <asp:Label ID="ERRORLabel4" runat="server" Text="不可為空" Visible="False" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style50">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style49">&nbsp;</td>
                    <td class="auto-style23" align="center" style="border-color: #000000; border-right-style: dotted; border-left-style: dotted; border-width: 5px; border-bottom-style:dotted;" colspan="3">
                        <asp:Button ID="Button1" runat="server" BackColor="#215968" Font-Names="微软雅黑" Font-Size="13pt" ForeColor="White" Height="35px" OnClick="Button1_Click" Text="查詢" Width="92px" />
                    </td>
                    <td class="auto-style50">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="margin-top: 0px" Visible="False">
            <table class="auto-style31" style="border: 5px groove #000000; width:100%; font-size: 20px; font-family: 微軟正黑體;">
                <tr>
                    <td class="auto-style38">科目<br /> 科目名稱:<asp:TextBox ID="evaluateTextBox" runat="server"></asp:TextBox>
                        <br />
                        科目代碼:<asp:TextBox ID="evaluateTextBox0" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">學年期<br /> 學年:<asp:TextBox ID="evaluateTextBox1" runat="server"></asp:TextBox>
                        <br />
                        學期:<asp:DropDownList ID="DropDownList6" runat="server" Height="19px" Width="45px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>上</asp:ListItem>
                            <asp:ListItem>下</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style35"></td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style38">教師<br /> 教師名稱:<asp:TextBox ID="evaluateTextBox3" runat="server"></asp:TextBox>
                        <br />
                        教師代碼:<asp:TextBox ID="evaluateTextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style38">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查詢" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" Text="測試用" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT 教師.姓名, 課程.* FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT 教師.姓名, 課程.連結 ,課程.學年 , 課程.學期 ,  課程.開課代碼, 課程.教師代碼, 課程.課程名稱 FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼  "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT 教師.姓名, 課程.連結 ,課程.學年 , 課程.學期 ,  課程.開課代碼, 課程.教師代碼, 課程.課程名稱 FROM 課程 INNER JOIN 教師 ON 課程.教師代碼 = 教師.教師代碼  "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" SelectCommand="SELECT * FROM [課程評論]"></asp:SqlDataSource>
        <br />
    <center>
        <table  align="center"  style="width:100%;">
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="教師代碼" HeaderText="教師代碼" SortExpression="教師代碼" />
                <asp:BoundField DataField="姓名" HeaderText="教師姓名" SortExpression="姓名" />
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
                <asp:HyperLinkField DataNavigateUrlFields="連結" HeaderText="課程大綱" Text="課程大綱" />
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
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="課程名稱" HeaderText="課程名稱" SortExpression="課程名稱" />
                <asp:BoundField DataField="學年" HeaderText="學年" SortExpression="學年" />
                <asp:BoundField DataField="學期" HeaderText="學期" SortExpression="學期" />
                <asp:BoundField DataField="姓名" HeaderText="教師姓名" SortExpression="姓名" />
                <asp:BoundField DataField="教師代碼" HeaderText="教師代碼" SortExpression="教師代碼" />
                <asp:HyperLinkField DataNavigateUrlFields="連結" HeaderText="課程大綱" Text="連結" />
                <asp:ButtonField HeaderText="查看評論" CommandName="GridRows" Text="查看" />
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
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="開課代碼" HeaderText="開課代碼" SortExpression="開課代碼" />
                <asp:BoundField DataField="課程名稱" HeaderText="課程名稱" SortExpression="課程名稱" />
                <asp:BoundField DataField="學年" HeaderText="學年" SortExpression="學年" />
                <asp:BoundField DataField="學期" HeaderText="學期" SortExpression="學期" />
                <asp:BoundField DataField="姓名" HeaderText="教師姓名" SortExpression="姓名" />
                <asp:BoundField DataField="教師代碼" HeaderText="教師代碼" SortExpression="教師代碼" />
                <asp:HyperLinkField DataNavigateUrlFields="連結" HeaderText="課程大綱" Text="連結" />
                <asp:TemplateField HeaderText="評分"></asp:TemplateField>
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
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnRowCommand="GridView3_RowCommand" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Visible="False" style="margin-right: 3px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="編號" HeaderText="評論編號" SortExpression="編號" />
                <asp:BoundField DataField="評論者" HeaderText="評論者" SortExpression="評論者" />
                <asp:BoundField DataField="評分" HeaderText="評分" SortExpression="評分" />
                <asp:BoundField DataField="內文" HeaderText="內文" SortExpression="內文" />
                <asp:ButtonField ButtonType="Button" HeaderText="檢舉評論" Text="檢舉"  >
                <ControlStyle BackColor="#215968" BorderColor="Black" ForeColor="White" />
                </asp:ButtonField>
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
            </tr>
        </table>
       </center>
        <asp:Panel ID="Panel4" runat="server" Visible="False">
            <table class="auto-style24">
                <tr>
                    <td class="auto-style30"></td>
                    <td class="auto-style30" style="border-color: #000000; font-family: 微軟正黑體; font-size: 20px; border-style: dotted dotted none dotted">課程名稱:<asp:Label ID="REPLB" runat="server" Text="Label" ></asp:Label>
                    </td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style29" style="border-color: #000000; font-family: 微軟正黑體; font-size: 20px; border-style:  none dotted none dotted">教師:<asp:Label ID="REPLB2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style29"></td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style29" style="border-color: #000000; font-family: 微軟正黑體; font-size: 20px; border-style:  none dotted none dotted">評論編號:<asp:Label ID="REPLB3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style29"></td>
                </tr>
                <tr>
                    <td class="auto-style30"></td>
                    <td class="auto-style30" style="border-color: #000000; font-family: 微軟正黑體; font-size: 20px; border-style:  none dotted none dotted">評論者:<asp:Label ID="REPLB4" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28" style="border-color: #000000; font-family: 微軟正黑體; font-size: 20px; border-style:  none dotted none dotted">評論內文:<asp:Label ID="REPLB5" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28" style="border-color: #000000; font-family: 微軟正黑體; font-size: 20px; border-style:  none dotted none dotted">檢舉理由:<asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="146px"></asp:TextBox>
                        <asp:Label ID="REPLB6" runat="server" Text="不可為空" Visible="False" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28"  align="center"  style="border-color: #000000; font-family: 微軟正黑體; font-size: 20px; border-style:  none dotted dotted dotted">
                        <asp:Button ID="Button3" runat="server" Text="檢舉" OnClick="Button3_Click" BackColor="#215968" ForeColor="White" Height="35px" Width="92px" Font-Names="微软雅黑" Font-Size="13pt" />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="請先登入" Visible="False" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    <p>
        &nbsp;</p>
    </form>
    </body>
</html>
