<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucemployee.ascx.cs" Inherits="wucemployee" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        text-align: center;
    }
    .auto-style6 {
        height: 39px;
    }
    .auto-style8 {
        width: 193px;
    }
    .auto-style10 {
        width: 197px;
    }
    .auto-style11 {
        width: 87px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3"><strong>Employee</strong></td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="emp-id"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtempid" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtempid" ErrorMessage="*Empty field" style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="*Empty field" style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label3" runat="server" Text="username"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername" ErrorMessage="*Empty field" style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label4" runat="server" Text="password"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="*Not Valid" style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label5" runat="server" Text="confirm password"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtconfirmpassword" ErrorMessage="*" style="color: #FF3300"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Not match" style="color: #FF0000"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label6" runat="server" Text="address"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress" ErrorMessage="*Empty field" style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label7" runat="server" Text="phone"></asp:Label>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtphone" ErrorMessage="*" style="color: #FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Button ID="Button1" runat="server" Text="add" OnClick="Button1_Click" Width="96px" />
            <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="delete" OnClick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Label ID="lblmsg" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3">
            <asp:Button ID="Button4" runat="server" style="margin-left: 64px" Text="search" OnClick="Button4_Click" />
            <asp:TextBox ID="txtsearch" runat="server" style="margin-left: 152px" Width="546px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="&gt;&gt;&gt;&gt;" ShowHeader="True" Text="&gt;&gt;&gt;&gt;" />
                    <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

