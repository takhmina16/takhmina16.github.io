<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Assignment.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: left;
            height: 26px;
        }
        .auto-style10 {
            text-align: right;
            width:479px;
            height: 26px;
        }
        .auto-style11 {
            text-align: right;
            width: 479px;
        }
        .auto-style12 {
            width: 479px;
        }
        .auto-style13 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width:1100px; border-bottom:2px;border-color: black"> 
        <tr><th colspan="3" class="auto-style13"> 
            <br />
            Contact Form</th> </tr>
        <tr><td class="auto-style10"> Name:</td> <td class="auto-style9">
            <asp:TextBox ID="txtName" runat="server" Width="172px"></asp:TextBox></td></tr>
        <tr><td class="auto-style11"> Email: </td><td>
            <asp:TextBox ID="txtEmail" runat="server" Width="174px"></asp:TextBox> </td> </tr>
        <tr><td class="auto-style11"> Subject: </td><td> <asp:TextBox ID="txtSubject" runat="server" Width="173px"></asp:TextBox></td> </tr>
        <tr><td class="auto-style11"> Message: </td><td>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="183px" Width="428px" Text="<%$ ConnectionStrings:DataUsersConnectionString %>"></asp:TextBox> </td> </tr>
        <tr><td class="auto-style12"> </td> <td> 
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" Width="76px" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" Width="73px" /></td></tr>
        <tr> <td colspan="2">
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Green"></asp:Label> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td></tr>

    </table>
    <br /> 
    <br /> 
    <br /> 
        <br /> 
    <br /> 

</asp:Content>
