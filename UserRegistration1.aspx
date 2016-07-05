<%@ Page Title="User Registeration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration1.aspx.cs" Inherits="Online_Bus_Ticket_Reservation_System.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 33px;
        }
        .style5
        {
            font-family: "Arial Rounded MT Bold";
        }
        #TextArea1
        {
            height: 57px;
            width: 279px;
        }
        .style6
        {
            height: 25px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
<div class="page-header">
 <h3>Register Yourself</h3>
</div>
<div>
 <asp:Panel ID="UserRegitrationpanel1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="style4">
                &nbsp;
                <asp:Label ID="NameReglbl" runat="server" 
                   Font-Bold="true" Font-Italic="true" Text="Name:"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;
                <asp:TextBox ID="nametextbox" runat="server" Width="282px" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="nametextbox" ErrorMessage="name is required" 
                    ValidationGroup="register"></asp:RequiredFieldValidator>
            </td>
            <td class="style4" colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style6">
                <span class="style5">&nbsp;
            </span>
                <asp:Label ID="emailreglbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Email Id:"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;
                <asp:TextBox ID="emailtextbox" runat="server" Width="282px"  placeholder="Enter your emailid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="emailtextbox" ErrorMessage="Email is required" 
                    ValidationGroup="register"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailtextbox" ErrorMessage="valid email id is required" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="register"></asp:RegularExpressionValidator>
            </td>
            <td colspan="2" class="style6">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Label ID="dobreglbl" runat="server" Font-Bold="true" Font-Italic="true" Text="D.O.B:"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:DropDownList ID="ddlday" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlmonth" runat="server" DataTextField="mm">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlyear" runat="server" DataTextField="yyyy" AutoPostBack="true"
                    onselectedindexchanged="ddlyear_SelectedIndexChanged">
                </asp:DropDownList>
                <%-- <script language="javascript" type="text/javascript">
                     var text = function dobvalidator() {
                         var x, text;
                         x = document.getElementById("dateofbirthtxt").value;
                         if (x == "dd-mm-yyyy") {
                             text = "input not valide";
                             return text;
                         }
                         document.getElementById("NameReglbl").innerHTML = text;
                     }
                </script> --%>
                <asp:TextBox ID="dateofbirthtxt" runat="server" Enabled="False" Height="22px">dd-mm-yyyy</asp:TextBox>
           
            </td>
            <td>
                &nbsp;
                <asp:Label ID="agereglbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Age:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="agetextbox" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td> 
                <asp:Label ID="genreglbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Gender:"></asp:Label>
            </td>
        <td>
        <%--    <asp:RadioButton ID="RadioMale" runat="server" 
                style="font-family: 'Copperplate Gothic Bold'" Text="Male" GroupName="gender" />
            <asp:RadioButton ID="RadioFemale" runat="server" 
                style="font-family: 'Copperplate Gothic Bold'" Text="Female" GroupName="gender" />--%>
                <asp:RadioButtonList ID="genderradiobtnlist" runat="server" 
                Font-Bold="true" Font-Italic="true" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="gendervalidator" runat="server" 
                ControlToValidate="genderradiobtnlist" ErrorMessage="select gender" 
                ValidationGroup="register"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td> 
                <asp:Label ID="addreglbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="addrtextbox" runat="server" Height="50px" Width="251px" 
                    TextMode="MultiLine"  placeholder="Enter your Address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="addrtextbox" ErrorMessage="Address is required" 
                    ValidationGroup="register"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td> 
                <asp:Label ID="contactreglbl" runat="server" Font-Bold="true" Font-Italic="true" Text="Contact No.:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="contacttextbox" runat="server" Height="22px" Width="209px"  placeholder="Enter your Contace no."></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="contacttextbox" ErrorMessage="Contact no. is rquired" 
                    ValidationGroup="register"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="contacttextbox" ErrorMessage="enter valid mobile no." 
                    ValidationExpression="^[1-9][0-9]{9}$" ValidationGroup="register"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr align="center"> 
        <td colspan="3" >
            <asp:Button ID="regsubbtn" runat="server" Text="Submit" 
              class="btn btn-primary" onclick="regsubbtn_Click" 
                ValidationGroup="register" />
            </td>
                </tr>
        </table>
        </asp:Panel>
</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
