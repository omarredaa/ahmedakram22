<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wucservies.ascx.cs" Inherits="wucservies" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        width: 85px;
    }
    .auto-style4 {
    }
    .auto-style5 {
        width: 200px;
    }
    .auto-style6 {
        width: 200px;
        height: 33px;
    }
    .auto-style7 {
        width: 85px;
        height: 33px;
    }
    .auto-style8 {
        height: 33px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center">servies</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="servies number"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtserviesnumber" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtserviesnumber" ErrorMessage="*Not Valid" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Text="servies name"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtserviesname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtserviesname" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label3" runat="server" Text="details"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtdetalis" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtdetalis" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label4" runat="server" Text="price"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtprice" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label5" runat="server" Text="type"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txttype" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label6" runat="server" Text="insurance"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtinsurance" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtinsurance" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label7" runat="server" Text="insurance number"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtinsurancenumber" runat="server"></asp:TextBox>
&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtinsurancenumber" ErrorMessage="*Not Valid" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label8" runat="server" Text="name"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtname" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label9" runat="server">date</asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtdate" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label10" runat="server" Text="value"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtvalue" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtvalue" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Button ID="Button1" runat="server" Text="add" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click1" />
            <asp:Button ID="Button3" runat="server" Text="delete" OnClick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Label ID="lblmsg" runat="server" style="color: #FF0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="3">
            <asp:Button ID="Button4" runat="server" style="margin-left: 109px" Text="search" OnClick="Button4_Click" />
            <asp:TextBox ID="txtsearch" runat="server" style="margin-left: 176px" Width="412px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="servies_number" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="&gt;&gt;&gt;&gt;" ShowHeader="True" Text="&gt;&gt;&gt;&gt;" />
                    <asp:BoundField DataField="servies_number" HeaderText="servies_number" ReadOnly="True" SortExpression="servies_number" />
                    <asp:BoundField DataField="servies_name" HeaderText="servies_name" SortExpression="servies_name" />
                    <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="insurance" HeaderText="insurance" SortExpression="insurance" />
                    <asp:BoundField DataField="insurance_number" HeaderText="insurance_number" SortExpression="insurance_number" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [servies]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

