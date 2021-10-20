<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Product_details.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 31px;
        }
        .auto-style2 {
            margin-left: 42px;
        }
        .auto-style3 {
            margin-left: 47px;
        }
        .auto-style4 {
            margin-left: 50px;
        }
        .auto-style6 {
            margin-left: 9px;
        }
        .auto-style7 {
            margin-left: 44px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="height: 216px">
    <form id="form1" runat="server" style="background-color:pink">

       
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="10pt" Text="product_ID" ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="10pt" Width="143px"></asp:TextBox>
        <br />
        &nbsp;<br />


        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="10pt" Text="product name" ForeColor="Black"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Size="10pt" Width="143px"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="10pt" Text="price" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Size="10pt" Height="16px" Width="143px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="10pt" Text="stock" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Size="10pt" Width="143px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="10pt" Text="ratting" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Size="10pt" Width="143px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="10pt" Text="warrunty" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="10pt" Height="16px" Width="143px" BackColor="White"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" Onclick="Button1_Click" runat="server" CssClass="auto-style6" Text="Save" Width="112px" ForeColor="Red" />


   
            <asp:Button ID="Button2" Onclick="Button2_Click" runat="server"  CssClass="auto-style6" Text="Update" Width="112px" ForeColor="Red" />

            

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


   
 <asp:Button ID="Button3" Onclick="Button2_Click" runat="server"  CssClass="auto-style8" Text="Delete" Width="112px" ForeColor="Red" />

            

    </form>
</body>
</html>
