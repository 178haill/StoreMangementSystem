<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewBIll.aspx.cs" Inherits="StoreManagementSystem.NewBIll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
       
    <br />
    Customer ID : <asp:TextBox ID="cid" runat="server"></asp:TextBox>
&nbsp;or
    <asp:Button ID="Button2" runat="server" Text="New Customer" OnClick="Button2_Click" />
    <br />
<br />
<asp:Button ID="Generate_Bill" runat="server" OnClick="Generate_Bill_Click" Text="Generate Bill" />

    
    <br />
    <br />
</asp:Content>
