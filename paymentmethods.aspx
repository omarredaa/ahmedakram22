<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paymentmethods.aspx.cs" Inherits="paymentmethods" %>

<%@ Register Src="~/wucpaymentmethods.ascx" TagPrefix="uc1" TagName="wucpaymentmethods" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wucpaymentmethods runat="server" ID="wucpaymentmethods" />
</asp:Content>

