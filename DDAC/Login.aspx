<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DDAC.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<div class="jumbotron">
    <div class="form-horizontal">
        <div class="container">
            <h3>User Login</h3>
            <div class="form-group row">
                <asp:Label runat="server" CssClass="control-label col-sm-2" Text="User Name :"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Password :"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:DropDownList ID="Dropdownlist" runat="server" CssClass="form-control">
                        <asp:ListItem Enabled="true" Text="Select user type" Value=""></asp:ListItem>
                        <asp:ListItem Text="Customer" Value="customer"></asp:ListItem>
                        <asp:ListItem Text="Staff" Value="staff"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="form-control" OnClick="Button1_Click"/>
                </div>
            </div>
        </div>
        <a href="Register.aspx">Register &#9658;</a>
    </div>
        
</div>
</asp:Content>
