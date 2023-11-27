<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuccustomer.ascx.cs" Inherits="wuccustomer" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
    }
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        width: 221px;
    }
    .auto-style5 {
        width: 364px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center"><strong>customer</strong></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" Text="customer_code"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtcustomer_code" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcustomer_code" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtname" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="address"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtaddress" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="email"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="******@*****.*****" style="color: #FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Button ID="Button1" runat="server" Text="add" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="update" />
            <asp:Button ID="Button3" runat="server" Text="delete" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Button ID="Button4" runat="server" style="margin-left: 37px" Text="search" Width="147px" OnClick="Button4_Click" />
            <asp:TextBox ID="txtsearch" runat="server" style="margin-left: 84px" Width="389px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customer_code" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="&gt;&gt;&gt;&gt;" ShowHeader="True" Text="&gt;&gt;&gt;&gt;" />
                    <asp:BoundField DataField="customer_code" HeaderText="customer_code" ReadOnly="True" SortExpression="customer_code" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

