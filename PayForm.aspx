<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PayForm.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.PayForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<div class="page-header">
<h3>Pay For Journey</h3>
</div>
    <asp:Label ID="nameofbanklbl" runat="server" Text="Name of Bank:" Font-Bold="false" 
        style="margin-right:60px;margin-bottom:30px" CssClass="style1"></asp:Label>
    <asp:DropDownList ID="nameofbankddl" runat="server" Width="204px" Height="26px" 
        style="padding-right:30px; margin-bottom:30px">
        <asp:ListItem>State Bank Of India</asp:ListItem>
        <asp:ListItem>Axis Bank</asp:ListItem>
        <asp:ListItem>Bank of Maharashtra</asp:ListItem>
        <asp:ListItem>HDFC Bank</asp:ListItem>
        <asp:ListItem>Sarasvat Bank</asp:ListItem>
        <asp:ListItem>ICICI Bank</asp:ListItem>
    </asp:DropDownList>
    <br />
        <asp:Label ID="Accountholdernamelbl" runat="server" Text="Account Holder:" Font-Bold="false" 
            style=" margin-right:52px  ;margin-bottom:30px" CssClass="style1"></asp:Label>
        <asp:TextBox ID="Accountholdernameltxt" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="true"></asp:TextBox>
    <asp:RequiredFieldValidator ID="accholderreq" runat="server" 
        ControlToValidate="Accountholdernameltxt" 
        ErrorMessage="account holder name is required." ValidationGroup="paygroup"></asp:RequiredFieldValidator>
    <br />
        <asp:Label ID="Accountnolbl" runat="server" Text="Account Number:" Font-Bold="false" 
            style=" margin-right:42px  ;margin-bottom:30px" CssClass="style1"></asp:Label>
        <asp:TextBox ID="Accountnotxt" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="true"></asp:TextBox>
    <asp:RequiredFieldValidator ID="amoutreq" runat="server" 
        ControlToValidate="Accountnotxt" 
        ErrorMessage="account number is must required" ValidationGroup="paygroup"></asp:RequiredFieldValidator>
        &nbsp;
    <asp:RangeValidator ID="accountnorange" runat="server" 
        ControlToValidate="Accountnotxt" ErrorMessage="valid account no. required" 
        MaximumValue="500000000000" MinimumValue="100" ValidationGroup="paygroup"></asp:RangeValidator>
    <br />
        <asp:Label ID="Amountopaylbl" runat="server" Text="Amount To Pay:" Font-Bold="false" 
            style=" margin-right:50px  ;margin-bottom:30px" CssClass="style1"></asp:Label>
        <asp:TextBox ID="Amounttopaytxt" runat="server" 
            style="padding-right:30px; margin-bottom:30px" Enabled="False"></asp:TextBox>
        &nbsp;
    <br />
        <asp:Label ID="errorlbl" runat="server" Text="Something goes Wrong" 
        ForeColor="Red" Visible="False" ></asp:Label>
    <br />
        <asp:Button ID="Paybtn" runat="server" class="btn btn-success" Text="Pay &amp; Book" 
        style="margin-left:350px" onclick="Paybtn_Click" 
        ValidationGroup="paygroup" />
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
