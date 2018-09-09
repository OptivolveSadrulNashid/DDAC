<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="DDAC.Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group row">
        <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Shipping ID :"></asp:Label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="dropdownlist">
                <asp:DropDownList ID="Dropdownlist" runat="server" CssClass="form-control">
                    <asp:ListItem Text="pending" Value="pending"></asp:ListItem>
                    <asp:ListItem Text="approved" Value="approved"></asp:ListItem>
                    <asp:ListItem Text="shipping" Value="shipping"></asp:ListItem>
                    <asp:ListItem Text="delivered" Value="delivered"></asp:ListItem>
                    <asp:ListItem Text="rejected" Value="rejected"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <asp:Button ID="Button1" runat="server" Text="Change" CssClass="form-control" OnClick="Button1_Click" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddacassignmentConnectionString %>" DeleteCommand="DELETE FROM [Shipping] WHERE [shipping_id] = @shipping_id" InsertCommand="INSERT INTO [Shipping] ([shipping_status]) VALUES (@shipping_status)" SelectCommand="SELECT [shipping_id], [shipping_status] FROM [Shipping]" UpdateCommand="UPDATE [Shipping] SET [shipping_status] = @shipping_status WHERE [shipping_id] = @shipping_id">
            <DeleteParameters>
                <asp:Parameter Name="shipping_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="shipping_status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="Dropdownlist" Name="shipping_status" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="shipping_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
