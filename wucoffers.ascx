<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucoffers.ascx.cs" Inherits="wucoffers" %>
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
        width: 424px;
    }
    .auto-style5 {
        width: 245px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center">offers</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="offersnumber"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtoffersnumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtoffersnumber" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtname" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label3" runat="server" Text="details"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtdetails" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtdetails" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label4" runat="server" Text="discount"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtdiscount" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtdiscount" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Button ID="Button1" runat="server" Text="add" OnClick="Button1_Click" />
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
            <asp:Button ID="Button4" runat="server" style="margin-left: 67px" Text="search" OnClick="Button4_Click" />
            <asp:TextBox ID="txtsearch" runat="server" style="margin-left: 183px" Width="418px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="offers_number" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="&gt;&gt;&gt;&gt;" ShowHeader="True" Text="&gt;&gt;&gt;&gt;" />
                    <asp:BoundField DataField="offers_number" HeaderText="offers_number" ReadOnly="True" SortExpression="offers_number" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                    <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [offers]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

