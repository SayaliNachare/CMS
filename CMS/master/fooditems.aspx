<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="fooditems.aspx.cs" Inherits="CMS.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="yellow_bg">
   <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Food Items</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
    <!-- section -->
    <section class="resip_section">
        <div class="container">
            <div class="row">
                <form runat="server">
        <asp:DataList ID="DataList1" runat="server" style="text-align:center" BackColor="#FFFF66" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyField="ProductID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table border="1" class="nav-justified" style="background-color:yellow">
                <tr>
                    <td class="auto-style1">Product ID: -<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Quantity:-<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.jpg" Width="140px" Height="45px" CommandName="addtocart" CommandArgument='<%# Eval("ProductID")%>'/>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
			<br />
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
			<br />
			</div>
		</div>	
        </form>
        </section>
</asp:Content>
