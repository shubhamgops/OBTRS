<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addtour.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.Addtour" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css" cssclass=" .cal_Theme1">
        /*Calendar Control CSS*/
        .cal_Theme1 .ajax__calendar_container   {
        background-color: #DEF1F4;
        border:solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_header  {
        background-color: #ffffff;
        margin-bottom: 4px;
        }

        .cal_Theme1 .ajax__calendar_title,
        .cal_Theme1 .ajax__calendar_next,
        .cal_Theme1 .ajax__calendar_prev    {
        color: #004080;
        padding-top: 3px;
        }

        .cal_Theme1 .ajax__calendar_body    {
        background-color: #ffffff;
        border: solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_dayname {
        text-align:center;
        font-weight:bold;
        margin-bottom: 4px;
        margin-top: 2px;
        color: #004080;
        }

        .cal_Theme1 .ajax__calendar_day {
        color: #004080;
        text-align:center;
        }

        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_day,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_month,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_year,
        .cal_Theme1 .ajax__calendar_active  {
        color: #004080;
        font-weight: bold;
        background-color: #DEF1F4;
        }

        .cal_Theme1 .ajax__calendar_today   {
        font-weight:bold;
        }

        .cal_Theme1 .ajax__calendar_other,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_today,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_title {
        color: #bbbbbb;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
 <div class="page-header">
    <h2>Add New Tour</h2>
    </div>
<div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <tr>
                        <td class="style1">
                            
                            <asp:Label ID="Sourcestnlbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Source Stn:"></asp:Label>
                        </td>
                        <td>
                           
                            <asp:TextBox ID="sourcestntxt" runat="server" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="sourcestntxt" ErrorMessage="Plz input valid Source stn" 
                                ValidationGroup="save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                           
                            <asp:Label ID="destinationstn" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Destination Stn:"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:TextBox ID="deststntxt" runat="server" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="deststntxt" 
                                ErrorMessage="Plz input valid Destination stn" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            
                            <asp:Label ID="rateperseatlbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Rate per Seat:"></asp:Label>
                        </td>
                        <td>
                            <i class="fa fa-inr"> <asp:TextBox ID="rateperseattxt" runat="server" 
                                Width="150px" Height="25px"></asp:TextBox></i>
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="rateperseattxt" 
                                ErrorMessage="Plz input valid Rate per Seat stn" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="plz input rate in rupees" ControlToValidate="rateperseattxt" 
                                ValidationExpression="^[1-9][0-9]*$" ValidationGroup="save"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="timelbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Time:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlhr" runat="server" Width="38px">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlmn" runat="server" Width="38px">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlampm" runat="server" Width="50px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="reachtimelbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Reach Time:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlhr2" runat="server" Width="38px">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlmn2" runat="server" Width="38px">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlampm2" runat="server" Width="48px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="dateofdepartlbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Date Of Depart:"></asp:Label>
                        </td>
                        <td>
                           
                    <asp:TextBox ID="dateofdeparttxt" runat="server" Width="150px"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                CssClass="cal_Theme1" TargetControlID="dateofdeparttxt" 
                                Format="dd/MM/yyyy">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="dateofdeparttxt" 
                                ErrorMessage="Plz input valid date stn" ValidationGroup="save"></asp:RequiredFieldValidator>
    </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="busnolbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Bus No.:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlbusno" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="bus_no" DataValueField="bus_no" 
                               >
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Bus booking DBConnectionString1 %>" 
                                SelectCommand="SELECT [bus_no] FROM [bus_db]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="totalseatslbl" runat="server" 
                                style="font-weight: 700; font-style: italic" Text="Total Seats:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddltotalseats" runat="server" 
                                DataSourceID="SqlDataSource3" DataTextField="no_of_seats" 
                                DataValueField="no_of_seats" Height="16px" Width="47px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Bus booking DBConnectionString1 %>" 
                                SelectCommand="SELECT [no_of_seats] FROM [bus_db] WHERE ([bus_no] = @bus_no)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlbusno" Name="bus_no" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    </table>
                         <div style="text-align:center">
                       <asp:Label ID="errorlbl" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                         <div style="text-align:center">
                          <asp:Button ID="savebtn" runat="server" Text="Save" class="btn btn-primary" 
                                 onclick="savebtn_Click" ValidationGroup="save" 
                               />
                        </div>
            </div>
        </div>
</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
