<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBus.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.AddCoffee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
 <div class="page-header">
    <h2>Add New Bus</h2>
    </div>
<div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <tr>
                        <td class="style1">
                            &nbsp;
                            <asp:Label ID="busnolbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Bus No.:"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="busnotxtbox" runat="server" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="busnotxtbox" ErrorMessage="plz input bus no. " 
                                ValidationGroup="save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                            <asp:Label ID="bustypelbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Bus Type:"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="bustypedd" runat="server">
                                <asp:ListItem>AC</asp:ListItem>
                                <asp:ListItem>Non-AC</asp:ListItem>
                                <asp:ListItem>Ac-Sleeper</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                            <asp:Label ID="noofseatslbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="No. Of Seats:"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:ListBox ID="noofseatslb" runat="server" Height="38px" Width="140px">
                            </asp:ListBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="noofseatslb" ErrorMessage="plz  valid select no. of seats" 
                                ValidationGroup="save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                         <div style="text-align:center">
                       <asp:Label ID="errorlbl" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                         <div style="text-align:center">
                          <asp:Button ID="savebtn" runat="server" Text="Save" class="btn btn-primary" 
                                 onclick="savebtn_Click" ValidationGroup="save"/>
                        </div>
            </div>
        </div>
</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
