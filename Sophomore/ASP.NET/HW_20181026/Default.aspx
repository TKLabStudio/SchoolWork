<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="帳號："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="請輸入帳號" ValidationGroup="null1"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="密碼："></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="請輸入密碼" ValidationGroup="null1"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="登入" ValidationGroup="null1" Width="44px" />
        <br />
        <br />
        <table style="width:100%;height:800px">
            <tr>
                <td style="width:30%; background-color: #FF0000;" >&nbsp;</td>
                <td style="width:70%; background-color: #0000FF;">&nbsp;</td>
            </tr>
            </table>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <table style="width:100%;height:800px" border="1">
            <tr>
                <td  style="height:20%" class="auto-style1" colspan="2"></td>
            </tr>
            <tr>
                <td style="height:70%;width:30%">&nbsp;</td>
                <td style="height:70%;width:70%">&nbsp;</td>
            </tr>
            <tr>
                <td style="height:10%; class="auto-style1" colspan="2">&nbsp;</td>
            </tr>
        </table>
    </p>
</body>
</html>
