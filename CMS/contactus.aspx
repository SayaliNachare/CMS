<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="CMS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="footer">
        <br />
    <div class="container-fluid">
                <div class="row">
                  <div class=" col-md-12">
                    <h2>Request  A<strong class="white"> Call  Back</strong></h2>
                  </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                      
                        <form class="main_form" runat="server">
                            <div class="row">
                             
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                    <span><label>NAME</label></span>
						    	<span><asp:TextBox runat="server" class="form-control" ID="Name"></asp:TextBox></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Name" ErrorMessage="Missing Field"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                    <span><label>E-MAIL</label></span>
						    	<span><asp:TextBox runat="server" CssClass="form-control" ID="EmailID"></asp:TextBox></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="EmailID" ErrorMessage="Missing Field"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                    <span><label>Phone No</label></span>
						    	<span><asp:TextBox runat="server" CssClass="form-control" ID="Phoneno"></asp:TextBox></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Phoneno" ErrorMessage="Missing Field"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
						     	<span><label>SUBJECT</label></span>
						    	<span><asp:TextBox runat="server" CssClass="form-control" ID="Subject"></asp:TextBox></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Subject" ErrorMessage="Missing Field"></asp:RequiredFieldValidator>
						    </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                    <span><label>MESSAGE</label></span>
						    	<span><asp:TextBox runat="server" TextMode="MultiLine" CssClass="textarea" ID="message"></asp:TextBox></span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="message" ErrorMessage="Missing Field"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                    <span><asp:Button ID="btncontact" CssClass="send" OnClick="btncontact_Click" runat="server" Text="Send"></asp:Button></span>
                                </div>
                                <br />
                            </div>
                        </form>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                        <div class="img-box">
                            <figure><img src="images/frankie.jpg" alt="img" /></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
