<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BusOverview.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.BusOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="page-header">
    <h2>Available Buses</h2>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
        <div class="panel-footer">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AddBus.aspx">Add New Bus:</asp:LinkButton>
        </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" CssClass="table table-hover" AutoGenerateColumns="False" DataKeyNames="busid" DataSourceID="sds_busbooking" 
                EnableModelValidation="True"
                Width="897px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="busid" HeaderText="busid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="busid" />
                    <asp:BoundField DataField="bus_no" HeaderText="bus_no" 
                        SortExpression="bus_no" />
                    <asp:BoundField DataField="bus_type" HeaderText="bus_type" 
                        SortExpression="bus_type" />
                    <asp:BoundField DataField="no_of_seats" HeaderText="no_of_seats" 
                        SortExpression="no_of_seats" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="sds_busbooking" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Bus booking DBConnectionString1 %>" 
                DeleteCommand="DELETE FROM [bus_db] WHERE [busid] = @busid" 
                InsertCommand="INSERT INTO [bus_db] ([bus_no], [bus_type], [no_of_seats]) VALUES (@bus_no, @bus_type, @no_of_seats)" 
                SelectCommand="SELECT * FROM [bus_db]" 
                UpdateCommand="UPDATE [bus_db] SET [bus_no] = @bus_no, [bus_type] = @bus_type, [no_of_seats] = @no_of_seats WHERE [busid] = @busid">
                <DeleteParameters>
                    <asp:Parameter Name="busid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="bus_no" Type="String" />
                    <asp:Parameter Name="bus_type" Type="String" />
                    <asp:Parameter Name="no_of_seats" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="bus_no" Type="String" />
                    <asp:Parameter Name="bus_type" Type="String" />
                    <asp:Parameter Name="no_of_seats" Type="Int32" />
                    <asp:Parameter Name="busid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
