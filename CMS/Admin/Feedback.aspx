<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="CMS.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="yellow_bg">
   <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="title">
                     <h2>FeedBack List</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
    <div class="check-out">
    <div class="container" style="text-align:center">
        <form runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="263px" Width="889px" BorderStyle="Solid">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                <asp:BoundField DataField="Phoneno" HeaderText="Phoneno" SortExpression="Phoneno" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contact]"></asp:SqlDataSource>
            </form>
        </div>
        </div>
</asp:Content>
