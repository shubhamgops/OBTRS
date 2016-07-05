<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.UserPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="sds_user" 
        EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="userid" HeaderText="userid" InsertVisible="False" 
                ReadOnly="True" SortExpression="userid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" 
                SortExpression="email_id" />
            <asp:BoundField DataField="date_of_birth" HeaderText="date_of_birth" 
                SortExpression="date_of_birth" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="user_type" HeaderText="user_type" 
                SortExpression="user_type" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="sds_user" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Bus booking DBConnectionString1 %>" 
    DeleteCommand="DELETE FROM [user_db] WHERE [userid] = @userid" 
    InsertCommand="INSERT INTO [user_db] ([name], [email_id], [date_of_birth], [gender], [address], [contact_no], [age], [user_type], [username]) VALUES (@name, @email_id, @date_of_birth, @gender, @address, @contact_no, @age, @user_type, @username)" 
    SelectCommand="SELECT [userid], [name], [email_id], [date_of_birth], [gender], [address], [contact_no], [age], [user_type], [username] FROM [user_db]" 
    UpdateCommand="UPDATE [user_db] SET [name] = @name, [email_id] = @email_id, [date_of_birth] = @date_of_birth, [gender] = @gender, [address] = @address, [contact_no] = @contact_no, [age] = @age, [user_type] = @user_type, [username] = @username WHERE [userid] = @userid">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter DbType="Date" Name="date_of_birth" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact_no" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="user_type" Type="String" />
            <asp:Parameter Name="username" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter DbType="Date" Name="date_of_birth" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="contact_no" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="user_type" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="userid" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
