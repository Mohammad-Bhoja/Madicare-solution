<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 355px;
    }
    .style2
    {
        width: 355px;
        height: 20px;
    }
    .style3
    {
        height: 20px;
    }
    .style4
    {
        width: 355px;
        height: 40px;
    }
    .style5
    {
        height: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2">
            <asp:Label ID="lblusername" runat="server" Text="User Name:"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="tb_Username" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
        </td>
        <td class="style3">
        </td>
    </tr>
    <tr>
        <td align="right" class="style4">
            <asp:Label ID="lblPasswaord" runat="server" Text="Password:"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="tb_Password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            <asp:Button ID="btn_Login" runat="server" onclick="btn_Login_Click" 
                Text="SUBMIT" />
        </td>
    </tr>
</table>
</asp:Content>

