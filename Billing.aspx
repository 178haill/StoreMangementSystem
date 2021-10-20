<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="StoreManagementSystem.Billing1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style4 {
            width: 308px;
        }
        .auto-style5 {
            width: 308px;
            height: 26px;
        }
        .auto-style6 {
            width: 308px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

 
    Bill ID :
    <asp:Label ID="Label_Bill_ID" runat="server" Text="0"></asp:Label>
    <br />
    Total :
    <asp:Label ID="Label_Total" runat="server" Text="0"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
    </asp:GridView>
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style4">Product Name</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:store_managementConnectionString %>" SelectCommand="SELECT * FROM [product_details]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Quantity</td>
            <td class="auto-style7">
                <asp:TextBox ID="quantity" runat="server">0</asp:TextBox>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
            </td>
            <td>&nbsp;</td>
        </tr>

    </table>
</asp:Content>
