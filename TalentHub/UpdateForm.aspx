<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateForm.aspx.cs" Inherits="TalentHub.UpdateForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 471px;
        }
    </style>
</head>
<body>
    <h1>Modify your details here</h1>
    <form id="form1" runat="server">
        <div>
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Enter your Email</td>
                    <td>
                        <asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                 
                </tr>
                <tr>
                    <td> <h3> &nbsp;</h3>
                        <h3> 
                            <asp:Button ID="DeleteUser" runat="server" OnClick="DeleteUser_Click" Text="Delete Account" />
                        </h3>
                        <h3> &nbsp;Enter new details, leave them blank if you want them unchanged</h3>
                        <p> &nbsp;</p>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Enter new Email</td>
                    <td>
                        <asp:TextBox ID="NewEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                 
                </tr>
                <tr>
                    <td class="auto-style1">Enter new password</td>
                    <td>
                        <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Re-enter new password</td>
                    <td>
                        <asp:TextBox ID="ConfPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfPass" Display="Dynamic" ErrorMessage="Password does not match" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Enter new Mobile no.</td>
                    <td>
                        <asp:TextBox ID="NewMob" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="UpdateNew" runat="server" OnClick="UpdateNew_Click" Text="Update" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
