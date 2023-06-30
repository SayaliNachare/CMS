<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeFile="FoodItemEntry.aspx.cs" Inherits="CMS.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 72%;
            height: 681px;
        }
        .auto-style2 {
            width: 181px;
            height: 79px;
        }
        .auto-style3 {
            width: 181px;
            height: 39px;
        }
        .auto-style4 {
            height: 39px;
        }
        .auto-style5 {
            width: 181px;
            height: 113px;
        }
        .auto-style6 {
            height: 113px;
        }
        .auto-style7 {
            width: 181px;
            height: 52px;
        }
        .auto-style8 {
            height: 52px;
        }
        .auto-style9 {
            width: 181px;
            height: 56px;
        }
        .auto-style10 {
            height: 56px;
        }
        .auto-style11 {
            width: 181px;
            height: 71px;
        }
        .auto-style12 {
            height: 71px;
        }
        .auto-style13 {
            width: 181px;
            height: 84px;
        }
        .auto-style14 {
            height: 84px;
        }
        .auto-style15 {
            height: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="yellow_bg">
   <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Add Food Items</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
    <div class="check-out">
    <div class="container">
        <form runat="server">
        <table border="1" class="auto-style1" style="background-color:lemonchiffon">
            <tr>
                <td class="auto-style9">Product ID</td>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Product Name</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="42px" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Price</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" Height="42px" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Upload Product Image</td>
                <td class="auto-style10">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" BackColor="yellow" BorderColor="#663300" Height="48px" OnClick="Button1_Click" Text="Save Product" Width="138px" />
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Black" ForeColor="White" NavigateUrl="~/fooditems.aspx">View All Product</asp:HyperLink>
        <br />
            </form>
        </div>
    </div>
</asp:Content>
