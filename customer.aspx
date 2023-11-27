<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="customer" %>

<%@ Register Src="~/wuccustomer.ascx" TagPrefix="uc1" TagName="wuccustomer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuccustomer runat="server" ID="wuccustomer" />
</asp:Content>

