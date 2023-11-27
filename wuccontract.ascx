<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuccontract.ascx.cs" Inherits="wuccontract" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style4 {
    }
    .auto-style5 {
        width: 168px;
    }
    .auto-style6 {
        width: 20px;
    }
    .auto-style7 {
        width: 168px;
        height: 33px;
    }
    .auto-style8 {
        width: 20px;
        height: 33px;
    }
    .auto-style9 {
        height: 33px;
        color: #FF0000;
    }
    .auto-style10 {
        height: 33px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center">contract</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="contractnumber"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtcontract_number" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcontract_number" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Text="details"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtdetails" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdetails" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="Label3" runat="server" Text="day"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="txtday" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style9">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtday" ErrorMessage="*Empty field"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label4" runat="server" Text="month"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtmonth" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtmonth" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="Label5" runat="server" Text="year"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="txtyear" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtyear" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label6" runat="server" Text="Customer code"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:DropDownList ID="ddlcustomercode" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="customer_code" Height="28px" Width="199px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [customer_code], [name] FROM [customer]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlcustomercode" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label7" runat="server" Text="Emp_id"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:DropDownList ID="ddlemployeeid" runat="server" DataSourceID="SqlDataSource2" DataTextField="username" DataValueField="emp_id" Height="28px" Width="199px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [emp_id], [username] FROM [employee]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlemployeeid" ErrorMessage="*Empty field" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label8" runat="server" Text="payment number"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:DropDownList ID="ddlpaymentnumber" runat="server" DataSourceID="SqlDataSource3" DataTextField="pay_me_number" DataValueField="pay_me_number" Height="28px" Width="199px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pay_me_number] FROM [payment_methods]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlpaymentnumber" ErrorMessage="*Not Valid" style="color: #FF0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Button ID="Button" runat="server" Text="add" Width="70px" OnClick="Button_Click" />
            <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click" />
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
            <asp:Button ID="Button4" runat="server" style="margin-left: 64px" Text="search" OnClick="Button4_Click" />
            <asp:TextBox ID="txtsearch" runat="server" style="margin-left: 149px" Width="512px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contract_number" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="&gt;&gt;&gt;&gt;" ShowHeader="True" Text="&gt;&gt;&gt;&gt;" />
                    <asp:BoundField DataField="contract_number" HeaderText="contract_number" ReadOnly="True" SortExpression="contract_number" />
                    <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                    <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
                    <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                    <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                    <asp:BoundField DataField="customer_code" HeaderText="customer_code" SortExpression="customer_code" />
                    <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id" />
                    <asp:BoundField DataField="pay_me_number" HeaderText="pay_me_number" SortExpression="pay_me_number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contract]"></asp:SqlDataSource>
        </td>
    </tr>
</table>

