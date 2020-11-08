<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="TalentHub.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;Login Form </h1>
        </div>
    <style>
        h1{
            text-align:center;
        }
        .auto-style1 {
            width: 52%;
            margin-left: 0px;
        }
        </style>
    <table class="auto-style1" align ="center">
        <tr>
            <td>
                <asp:TextBox ID="userTb" runat="server" placeholder="Email-id" Width="381px" Height="30px" ValidationGroup="user"></asp:TextBox>
            </td>
            
        </tr>
       
        <tr>
            <td>
                <asp:TextBox ID="userPass" runat="server" placeholder="Password" Width="383px" CssClass="auto-style10" Height="30px" TextMode="Password" ValidationGroup="user"></asp:TextBox>
               </td>
            </tr>
         <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" style="font-size:25px;" Text="Login as"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="UserRadio" style="font-size:20px;" runat="server" Height="30px" Text="User" GroupName="button" />
                <asp:RadioButton ID="AdminRadio" style="font-size:20px;" runat="server" Height="30px" Text="Admin" GroupName="button" />
             </td>
             
            
        </tr>
                <tr>
                    <td>
                    <asp:Button ID="UserLogin" runat="server" class="button" Text="Login" Height="46px" Width="131px" OnClick="UserLogin_Click" ValidationGroup="user" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
                
            </td>
            
        </tr>
        
    </table>
        

    <style>
        .button {
    background-color: white; 
    color: black; 
    border: 2px solid #008000;
    padding: 8px;
    text-align: center;
    font-size: 16px;
    }

    .button:hover {
     background-color: #008000;
    color: white;
    }
    .button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008000;
    padding: 8px;
    text-align: center;
    font-size: 16px;
    }

    .button2:hover {
     background-color: #008000;
    color: white;
    }
        .auto-style10 {
            margin-right: 96px;
            margin-top: 0px;
        }
        </style>
        
        

    </form>
    </body>
</html>
