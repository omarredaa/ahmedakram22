<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contract.aspx.cs" Inherits="contract" %>

<%@ Register Src="~/wuccontract.ascx" TagPrefix="uc1" TagName="wuccontract" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wuccontract runat="server" ID="wuccontract" />
</asp:Content>

