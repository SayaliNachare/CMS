<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="CMS.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="StyleSheet3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="loginbox">
                     <h2>Admin Login</h2>
        <form runat="server">
            <asp:Label Text="UserName" CssClass="lbluser" runat="server" /> 
            <asp:TextBox ID="txtuser" runat="server" CssClass="txtuser" placeholder="Enter UserName"/><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser" ErrorMessage="Missing Field"></asp:RequiredFieldValidator><br />
            <asp:Label Text="Password" CssClass="lblpass" runat="server" /> 
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="txtpass" placeholder="***********"/><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Missing Field"></asp:RequiredFieldValidator>
            <asp:Button Text="Login" OnClick="Button1_Click" CssClass="btnlogin" runat="server" />
            <asp:Label ID="lbl_msg" runat="server" />
        </form>
    </div>
    <br />
        <br />
    <br />
    <br />
    <br />
    <br />
        <br />
    <br />
    <br />
    <br />
    <br />
        <br />
    <br />
    <br />
</asp:Content>
