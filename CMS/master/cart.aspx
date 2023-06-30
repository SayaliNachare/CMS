<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="CMS.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="yellow_bg">
   <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Food Items cart</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
    <!-- section -->
    <section class="resip_section">
         <form runat="server">
    <div class="container" style="text-align:center">
             <h3 style="text-align:left;color:yellow">No of Product in Your Cart : - <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h3>
    	     <h3 style="text-align:left;color:yellow"><p class="cart"><br/>Click<a href="fooditems.aspx" style="color:yellow"> here</a> to continue shopping</p></h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="316px" Width="959px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S_No">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="ProductImage" HeaderText="ProductImage">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" Height="30%" Width="30%" />
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
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="White" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
             </asp:GridView>
        <br />
        <br />

             <p align="left"><asp:Button ID="Button1" runat="server" BackColor="yellow" BorderColor="#663300" Height="37px" OnClick="Button1_Click" Text="Checkout" Width="157px" /></p>

         </div>
             </form>
        </section>
</asp:Content>
