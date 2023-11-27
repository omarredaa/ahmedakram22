<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuclogin.ascx.cs" Inherits="wuclogin" %>
<style type="text/css">
    .auto-style1 {
        width: 36%;
        height: 282px;
    }
    .auto-style2 {
        height: 57px;
    }
    .auto-style3 {
        height: 57px;
        font-weight: bold;
        font-size: large;
    }
    .auto-style4 {
        font-size: large;
        font-weight: bold;
    }
    .auto-style5 {
        font-size: x-large;
        color: #FF3300;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="2" style="text-align: center"><strong>Login Page</strong></td>
    </tr>
    <tr>
        <td class="auto-style4">Username</td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" Height="36px" Width="213px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Password</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtpassword" runat="server" Height="36px" TextMode="Password" Width="213px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:CheckBox ID="ch" runat="server" style="font-weight: 700; font-size: large" Text="Remember ME" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnlogin" runat="server" Height="41px" OnClick="btnlogin_Click" style="font-weight: 700; font-size: large" Text="Login " Width="127px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="lblmsg" runat="server" style="font-weight: 700; font-size: x-large; color: #FF3300"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
</table>

