<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="servies.aspx.cs" Inherits="servies" %>

<%@ Register Src="~/wucservies.ascx" TagPrefix="uc1" TagName="wucservies" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wucservies runat="server" ID="wucservies" />
</asp:Content>

