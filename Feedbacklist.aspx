<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedbacklist.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.Feedbacklist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-hover"
        DataSourceID="feedback_sds" EnableModelValidation="True" ForeColor="Black" 
        GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="cotactno" HeaderText="cotactno" 
                SortExpression="cotactno" />
            <asp:BoundField DataField="subject" HeaderText="subject" 
                SortExpression="subject" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" 
                SortExpression="Comment" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="feedback_sds" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Bus booking DBConnectionString1 %>" 
        SelectCommand="SELECT [name], [email], [cotactno], [subject], [Comment] FROM [feedback_db]">
    </asp:SqlDataSource>
</asp:Content>
