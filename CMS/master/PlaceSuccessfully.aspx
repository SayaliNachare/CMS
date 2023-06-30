<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="PlaceSuccessfully.aspx.cs" Inherits="CMS.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 119%;
            height: 518px;
        }
        .auto-style2 {
            height: 87px;
        }
        .auto-style3 {
            width: 100%;
            height: 102px;
        }
        .auto-style4 {
            width: 595px;
        }
        .auto-style5 {
            height: 50px;
        }
        .auto-style6 {
            text-align: center;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="yellow_bg">
   <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>Invoice</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
    <div class="check-out">
    <div class="container" style="Height:"202%" Width:"800%"">
        <form runat="server">
    <br />
    Order ID :

    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="yellow" BorderColor="#663300" Height="46px" OnClick="Button1_Click" Text="Download Invoice" Width="222px" />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="353px" Width="800px">
        <table class="auto-style1" border="1" >
            <tr>
                <td class="auto-style6">Retail Invoice</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;Order ID :
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <br />
                    &nbsp;Order Date :
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style3" border="1">
                        <tr>
                            <td class="auto-style4">&nbsp; Buyer Name & Address :<br /> &nbsp;
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;Seller Address:<br /> &nbsp;Nallasopara East,Mumbai</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="text-align:center">
                <td style="text-align:center">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Height="202px" Width="800px" AutoGenerateColumns="False">
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
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
                    </asp:GridView>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;Grant Total :<asp:Label ID="Label7" runat="server"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;Declaration : We declare that this invoive shows actual price of the goods described inclusive of taxes and that all particulars are true and correct&nbsp;.<br /> &nbsp;Incase you find Selling price on this invoice to be more than MRP mentioned on product,Please inform&nbsp; <a href="wrongMRP@ashu.com">wrongMRP@ashu.com</a><br />
                    <br />
                    &nbsp;THIS IS A COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE<br /> </td>
            </tr>
        </table>
    </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br/>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br/>
        <br />
        <br />
            </form>
    </div>
        </div>
</asp:Content>
