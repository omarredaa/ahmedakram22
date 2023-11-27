<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<%@ Register Src="~/wucemployee.ascx" TagPrefix="uc1" TagName="wucemployee" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:wucemployee runat="server" ID="wucemployee" />

</asp:Content>

