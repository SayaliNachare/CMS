<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeFile="FoodItemList.aspx.cs" Inherits="CMS.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="yellow_bg">
   <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Food Items List</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
    <div class="check-out">
    <div class="container" style="text-align:center">
        <form runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="263px" Width="889px" BorderStyle="Solid">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:ImageField DataImageUrlField="ProductImage" HeaderStyle-Height="100%" ItemStyle-Width="100%" HeaderText="ProductImage" SortExpression="ProductImage" >
<HeaderStyle Height="100%"></HeaderStyle>

                    <ItemStyle HorizontalAlign="Center" Height="30%" Width="30%" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
            </form>
        </div>
        </div>
</asp:Content>
