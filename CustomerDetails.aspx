<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="StoreManagementSystem.CustomerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="cname" runat="server"></asp:TextBox>
                *</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Mobile Number</td>
            <td class="auto-style3">
                <asp:TextBox ID="cnumber" runat="server" ></asp:TextBox>
                *</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td class="auto-style3">
                <asp:TextBox ID="cmail" runat="server"></asp:TextBox>
                *</td>
            <td class="auto-style1">
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="cmail" ErrorMessage="Invalid Mail"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Age</td>
            <td class="auto-style3">
                <asp:TextBox ID="cage" runat="server"></asp:TextBox>
                *</td>
            <td class="auto-style1">
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="cage" ErrorMessage="Invalid Age" MaximumValue="120" MinimumValue="10"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender</td>
            <td class="auto-style3">
                <asp:DropDownList ID="cgender" runat="server">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">City</td>
            <td class="auto-style3">
                <asp:TextBox ID="ccity" runat="server"></asp:TextBox>
                *</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">Salary</td>
            <td class="auto-style3">
                <asp:TextBox ID="csalary" runat="server"></asp:TextBox>
                *</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Entered_Customer_Details" runat="server" OnClick="Entered_Customer_Details_Click" Text="Enter" />
            </td>
            <td class="auto-style1"></td>
        </tr>
    </table>
</asp:Content>
