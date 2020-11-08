<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TalentHub.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="w3-panel w3-topbar w3-bottombar w3-leftbar w3-rightbar w3-border-red w3-pale-blue">
            <h1 style="color:mediumblue">Welcome to Talent Hub Academy! Explore your talent here</h1>
            <h1>Registration Form</h1>
        
        <table class="auto-style1" align ="center">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="FirstName"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextFN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFN" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextLN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextLN" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Email id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="Enter valid email id" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextPass" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextCPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPass" ControlToValidate="TextCPass" Display="Dynamic" ErrorMessage="Please re-enter password" SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextCPass" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextDOB" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextDOB" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextMobile" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextMobile" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Register Now" class="button" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="LoginForm.aspx">Already Registered? Go to login</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>
            </div>
    </form>
    <style>
        .button {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
    padding: 8px;
    text-align: center;
    font-size: 16px;
    }

    .button:hover {
     background-color: #008CBA;
    color: white;
    }
    h1{
        text-align:center;
        font-family: "Allerta Stencil", Sans-serif;
    }

    </style>
</body>
</html>
