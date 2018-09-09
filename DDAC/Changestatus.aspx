<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Changestatus.aspx.cs" Inherits="DDAC.Changestatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:PlaceHolder ID="PlaceHolder1"  runat="server"></asp:PlaceHolder>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="shipping_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="shipping_id" HeaderText="shipping_id" InsertVisible="False" ReadOnly="True" SortExpression="shipping_id" />
                <asp:BoundField DataField="departure_port" HeaderText="departure_port" SortExpression="departure_port" />
                <asp:BoundField DataField="arrival_port" HeaderText="arrival_port" SortExpression="arrival_port" />
                <asp:BoundField DataField="shipping_date" HeaderText="shipping_date" SortExpression="shipping_date" />
                <asp:BoundField DataField="shipping_status" HeaderText="shipping_status" SortExpression="shipping_status" />
                <asp:BoundField DataField="shipping_cost" HeaderText="shipping_cost" SortExpression="shipping_cost" />
                <asp:BoundField DataField="shipping_details" HeaderText="shipping_details" SortExpression="shipping_details" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddacassignmentConnectionString %>" SelectCommand="SELECT * FROM [Shipping]"></asp:SqlDataSource>
    </div>
    <div class="form-group">
        <a href="Status.aspx">Change Status &#9658;</a>
    </div>
</asp:Content>
