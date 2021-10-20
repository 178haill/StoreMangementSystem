<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StoreManagementSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <div>
        &nbsp;<table style="width:100%;">
                <tr>
                    <td>Username</td>
                    <td>
                        <input id="username" type="text" /><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Invalid username"></asp:CustomValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <input id="password" type="password" /></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    
                    <td>
                        &nbsp;
</asp:Content>
