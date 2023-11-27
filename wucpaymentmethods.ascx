<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucpaymentmethods.ascx.cs" Inherits="wucpaymentmethods" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: left;
    }
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        text-align: left;
        width: 179px;
    }
    .auto-style5 {
        width: 137px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center">payment methods</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" Text="payment number"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtpaymentnumber" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpaymentnumber" ErrorMessage="*Not valid" style="color: #FF0000"></asp:RequiredFieldValidator>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtname" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="expire date"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtexpiredate" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtexpiredate" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="cash"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtcash" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtcash" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="visa"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtvisa" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtvisa" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Button ID="Button1" runat="server" style="text-align: center" Text="add" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="delete" OnClick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Label ID="lblmsg" runat="server" style="color: #FF0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Button ID="Button4" runat="server" style="margin-left: 84px" Text="search" OnClick="Button4_Click" />
            <asp:TextBox ID="txtsearch" runat="server" style="margin-left: 127px" Width="432px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pay_me_number" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="&gt;&gt;&gt;&gt;" ShowHeader="True" Text="&gt;&gt;&gt;&gt;" />
                    <asp:BoundField DataField="pay_me_number" HeaderText="pay_me_number" ReadOnly="True" SortExpression="pay_me_number" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="expire_date" HeaderText="expire_date" SortExpression="expire_date" />
                    <asp:BoundField DataField="cash" HeaderText="cash" SortExpression="cash" />
                    <asp:BoundField DataField="visa" HeaderText="visa" SortExpression="visa" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [payment_methods]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

