<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.Tickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookingid"  CssClass="table table-hover"
        DataSourceID="Tickets_ds" EnableModelValidation="True" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Horizontal" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <EmptyDataTemplate>No Ticket is Booked</EmptyDataTemplate>
        <Columns>
            <asp:ButtonField buttontype="Button" CommandName="delete" HeaderText="" text="Cancel Ticket" ControlStyle-CssClass="btn btn-success"/>
            <asp:BoundField DataField="source" HeaderText="source" 
                SortExpression="source" />
            <asp:BoundField DataField="destination" HeaderText="destination" 
                SortExpression="destination" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"  DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="seats" HeaderText="seats" SortExpression="seats" />
            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
            <asp:BoundField DataField="ticket_no" HeaderText="ticket_no" 
                SortExpression="ticket_no" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" 
                SortExpression="Contact_no" />
            <asp:BoundField DataField="totalseat" HeaderText="totalseat" 
                SortExpression="totalseat" />
            <asp:BoundField DataField="totalrent" HeaderText="totalrent" 
                SortExpression="totalrent" />
            <asp:BoundField DataField="Busno" HeaderText="Busno" SortExpression="Busno" />
            <asp:BoundField DataField="bookingid" HeaderText="bookingid" 
                InsertVisible="False" ReadOnly="True" SortExpression="bookingid" />
                 <asp:ButtonField buttontype="Button" CommandName="select" HeaderText="" text="select Ticket" ControlStyle-CssClass="btn btn-success"/>
        </Columns>
        
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        
    </asp:GridView>
    <asp:SqlDataSource ID="Tickets_ds" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Bus booking DBConnectionString1 %>" 
        DeleteCommand="DELETE FROM [booking_db] WHERE [bookingid] = @bookingid" 
        InsertCommand="INSERT INTO [booking_db] ([source], [destination], [date], [time], [seats], [rate], [ticket no], [name], [Contact no], [totalseat], [totalrent], [Busno]) VALUES (@source, @destination, @date, @time, @seats, @rate, @ticket_no, @name, @Contact_no, @totalseat, @totalrent, @Busno)" 
        SelectCommand="SELECT [source], [destination], [date], [time], [seats], [rate], [ticket no] AS ticket_no, [name], [Contact no] AS Contact_no, [totalseat], [totalrent], [Busno], [bookingid] FROM [booking_db] WHERE ([bookuserid] = @bookuserid)" 
        UpdateCommand="UPDATE [booking_db] SET [source] = @source, [destination] = @destination, [date] = @date, [time] = @time, [seats] = @seats, [rate] = @rate, [ticket no] = @ticket_no, [name] = @name, [Contact no] = @Contact_no, [totalseat] = @totalseat, [totalrent] = @totalrent, [Busno] = @Busno WHERE [bookingid] = @bookingid">
        <DeleteParameters>
            <asp:Parameter Name="bookingid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="seats" Type="String" />
            <asp:Parameter Name="rate" Type="Decimal" />
            <asp:Parameter Name="ticket_no" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="Contact_no" Type="String" />
            <asp:Parameter Name="totalseat" Type="Int32" />
            <asp:Parameter Name="totalrent" Type="Decimal" />
            <asp:Parameter Name="Busno" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="bookuserid" SessionField="uid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="seats" Type="String" />
            <asp:Parameter Name="rate" Type="Decimal" />
            <asp:Parameter Name="ticket_no" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="Contact_no" Type="String" />
            <asp:Parameter Name="totalseat" Type="Int32" />
            <asp:Parameter Name="totalrent" Type="Decimal" />
            <asp:Parameter Name="Busno" Type="String" />
            <asp:Parameter Name="bookingid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
    <div style="padding-left:200px" >
        <asp:Button ID="printticket" runat="server" Text="Print Ticket" 
            class="btn btn-primary" Width="100px" onclick="printticket_Click" /></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
