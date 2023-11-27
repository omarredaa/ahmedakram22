<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="offers.aspx.cs" Inherits="offers" %>

<%@ Register Src="~/wucoffers.ascx" TagPrefix="uc1" TagName="wucoffers" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wucoffers runat="server" ID="wucoffers" />
</asp:Content>

