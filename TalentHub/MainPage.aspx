<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="TalentHub.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3 style="color: #008000">Login Success!!</h3>
            <h4 style="font-family: Candara">If you want to modify your Account details, Click below</h4>
            <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Modify details" ForeColor="#3333FF" />
        </div>
    </form>
</body>
</html>
