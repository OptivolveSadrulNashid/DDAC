<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shipping.aspx.cs" Inherits="DDAC.Shipping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="form-horizontal">
            <div class="container">
                <asp:Label ID="Label1" runat="server" ForeColor="black"></asp:Label>
                <h3>Create shipping details</h3>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Arrival port"></asp:Label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="Dropdownlist" runat="server" CssClass="form-control">
                            <asp:ListItem Enabled="true" Text="Select port" Value=""></asp:ListItem>
                            <asp:ListItem Text="Port Z" Value="Port Z"></asp:ListItem>
                            <asp:ListItem Text="Port W" Value="port W"></asp:ListItem>
                            <asp:ListItem Text="Port 2" Value="port 2"></asp:ListItem>
                            <asp:ListItem Text="Port F" Value="port F"></asp:ListItem>
                            <asp:ListItem Text="Port N" Value="port N"></asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>

                <div class="form-group">
                    <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Departure port"></asp:Label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="Dropdownlist1" runat="server" CssClass="form-control">
                            <asp:ListItem Enabled="true" Text="Select port" Value=""></asp:ListItem>
                            <asp:ListItem Text="Port Z" Value="Port Z"></asp:ListItem>
                            <asp:ListItem Text="Port W" Value="port W"></asp:ListItem>
                            <asp:ListItem Text="Port 2" Value="port 2"></asp:ListItem>
                            <asp:ListItem Text="Port F" Value="port F"></asp:ListItem>
                            <asp:ListItem Text="Port N" Value="port N"></asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <asp:TextBox ID="TextBox1" runat="server" class="Datetime" CssClass="form-control row"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Calendar" CssClass="form-control row" OnClick="Button1_Click1" />
                        </div>
                    </div>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CssClass="form-control" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged" CellPadding="4" DayNameFormat="Shortest">
                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </div><br />
                <div class="form-group row">
                    <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Shipping details"></asp:Label>
                    <div class="col-sm-10">
                        <asp:Textbox ID="TextBox2" runat="server" CssClass="form-control"></asp:Textbox>
                    </div>
                </div> 
                <div class="form-group row">
                    <asp:Label runat="server" CssClass="control-label col-sm-2" Text="Shipping weight" ID="Label2"></asp:Label>
                    <div class="col-sm-10">
                        <asp:Textbox ID="TextBox3" runat="server" CssClass="form-control"></asp:Textbox>
                    </div>
                </div>

                <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="form-control" OnClick="Button2_Click" />
                </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddacassignmentConnectionString %>" SelectCommand="SELECT * FROM [Shipping]">
                        
                    </asp:SqlDataSource>
            </div>
            </div>
        </div>
    </div>

</asp:Content>
