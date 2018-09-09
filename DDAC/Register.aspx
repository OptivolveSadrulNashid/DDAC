<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" MasterPageFile="~/Site.Master" Inherits="DDAC.Register" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="form-horizontal">
        <div class="container">
            <h3>User Registration</h3>
            <div class="form-group">
                <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Full Name"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Email"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Password"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="dropdownlist">
                        <asp:DropDownList ID="Dropdownlist" runat="server" CssClass="form-control">
                            <asp:ListItem Enabled="true" Text="Select user type" Value=""></asp:ListItem>
                            <asp:ListItem Text="Customer" Value="customer"></asp:ListItem>
                            <asp:ListItem Text="Staff" Value="staff"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="form-control" OnClick="Button1_Click" />
                </div>
            </div>

            <a href="login.aspx">&#9664; back to login</a><br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddacassignmentConnectionString %>" SelectCommand="SELECT * FROM [Users]" InsertCommand="INSERT INTO [Users] ( [user_name],[user_email], [user_password], [user_type]) VALUES (@user_name, @user_email, @user_password, @user_type)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="user_name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="user_email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="user_password" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Dropdownlist" Name="user_type" PropertyName="Text" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
        </div>
    </div>
</asp:Content>
