<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="CMS.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 69%;
            height: 178px;
        }
        .auto-style5 {
            width: 163px;
        }
        .auto-style6 {
            width: 163px;
            height: 134px;
        }
        .auto-style7 {
            height: 134px;
            width: 558px;
        }
        .auto-style8 {
            width: 131px;
            text-align: left;
        }
        .auto-style9 {
            width: 558px;
        }
        .auto-style10 {
            width: 70%;
            height: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="yellow_bg">
   <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Checkout</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
    <div class="container" style="text-align:center">
        <form runat="server">
    <br />
    <table class="auto-style4" border="1">
        <tr>
            <td class="auto-style8">&nbsp;&nbsp; Order ID</td>
            <td>
                <asp:Label ID="Label1" runat="server" style="text-align: left"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp; Order Date</td>
            <td>
                <asp:Label ID="Label2" runat="server" style="text-align: left"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" Height="302px" ShowFooter="True" Width="774px" ForeColor="Black" GridLines="Horizontal">
        <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductID" HeaderText="Product ID">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ProductImage" HeaderText="ProductImage">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Price" HeaderText="Price">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="TotalPrice">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Height="40px" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="White" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

    <br />
    <table border="1" class="auto-style10">
        <tr>
            <td class="auto-style6">&nbsp; Type Your Name & Address: -</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" style="position:center" runat="server" Height="104px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp; Mobile Number: -</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" Width="397px"></asp:TextBox>
            </td>
        </tr>
    </table>
    </div>
    <br />
    <br />
    <div class="container">
    <asp:Button ID="Button1" runat="server" BackColor="yellow" BorderColor="#663300" Height="41px" OnClick="Button1_Click" Text="Placed Order" Width="157px" />
    <br />
            </form>
    </div>
    <br />
</asp:Content>
