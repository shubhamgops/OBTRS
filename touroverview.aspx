<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="touroverview.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.touroverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="page-header">
    <h2>Available Tours</h2>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
        <div class="panel-footer">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Addtour.aspx">Add New Tour:</asp:LinkButton>
               </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tourid" CssClass="table table-hover"
                DataSourceID="SqlDataSource1" EnableModelValidation="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="tourid" HeaderText="tourid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="tourid" />
                    <asp:BoundField DataField="sourcestn" HeaderText="sourcestn" 
                        SortExpression="sourcestn" />
                    <asp:BoundField DataField="destinationstn" HeaderText="destinationstn" 
                        SortExpression="destinationstn" />
                    <asp:BoundField DataField="rateperseat" HeaderText="rateperseat" 
                        SortExpression="rateperseat" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="reachtime" HeaderText="reachtime" 
                        SortExpression="reachtime" />
                    <asp:BoundField DataField="dateofdepart" HeaderText="dateofdepart" 
                        SortExpression="dateofdepart" />
                    <asp:BoundField DataField="busno" HeaderText="busno" SortExpression="busno" />
                    <asp:BoundField DataField="totalseats" HeaderText="totalseats" 
                        SortExpression="totalseats" />
                    <asp:BoundField DataField="bookedseats" HeaderText="bookedseats" 
                        SortExpression="bookedseats" />
                    <asp:BoundField DataField="availableseats" HeaderText="availableseats" 
                        SortExpression="availableseats" />
                </Columns>
                 <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Bus booking DBConnectionString1 %>" 
                DeleteCommand="DELETE FROM [tour_db] WHERE [tourid] = @tourid" 
                InsertCommand="INSERT INTO [tour_db] ([sourcestn], [destinationstn], [rateperseat], [time], [reachtime], [dateofdepart], [busno], [totalseats], [bookedseats], [availableseats]) VALUES (@sourcestn, @destinationstn, @rateperseat, @time, @reachtime, @dateofdepart, @busno, @totalseats, @bookedseats, @availableseats)" 
                SelectCommand="SELECT * FROM [tour_db]" 
                UpdateCommand="UPDATE [tour_db] SET [sourcestn] = @sourcestn, [destinationstn] = @destinationstn, [rateperseat] = @rateperseat, [time] = @time, [reachtime] = @reachtime, [dateofdepart] = @dateofdepart, [busno] = @busno, [totalseats] = @totalseats, [bookedseats] = @bookedseats, [availableseats] = @availableseats WHERE [tourid] = @tourid">
                <DeleteParameters>
                    <asp:Parameter Name="tourid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sourcestn" Type="String" />
                    <asp:Parameter Name="destinationstn" Type="String" />
                    <asp:Parameter Name="rateperseat" Type="String" />
                    <asp:Parameter Name="time" Type="String" />
                    <asp:Parameter Name="reachtime" Type="String" />
                    <asp:Parameter DbType="Date" Name="dateofdepart" />
                    <asp:Parameter Name="busno" Type="String" />
                    <asp:Parameter Name="totalseats" Type="String" />
                    <asp:Parameter Name="bookedseats" Type="String" />
                    <asp:Parameter Name="availableseats" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sourcestn" Type="String" />
                    <asp:Parameter Name="destinationstn" Type="String" />
                    <asp:Parameter Name="rateperseat" Type="String" />
                    <asp:Parameter Name="time" Type="String" />
                    <asp:Parameter Name="reachtime" Type="String" />
                    <asp:Parameter DbType="Date" Name="dateofdepart" />
                    <asp:Parameter Name="busno" Type="String" />
                    <asp:Parameter Name="totalseats" Type="String" />
                    <asp:Parameter Name="bookedseats" Type="String" />
                    <asp:Parameter Name="availableseats" Type="String" />
                    <asp:Parameter Name="tourid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
     
        </div>
    </div>
</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
