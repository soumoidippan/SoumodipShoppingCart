<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ShoppingCartSoumodip.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Security question"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownSecurity" runat="server">
                <asp:ListItem Value="What is your pet name?"></asp:ListItem>
                <asp:ListItem Value="In which city you were born?"></asp:ListItem>
                <asp:ListItem Value="What is the name of your first school?"></asp:ListItem>
                <asp:ListItem Value="What is your favorite color?"></asp:ListItem>
                <asp:ListItem Value="What is your father's middle name?"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <p>
            <asp:Label ID="lblAnswer1" runat="server" Text="Answer"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAnser1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
        </p>
&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="lbl123" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Text="Get Password" Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go To Login" />
    </form>
</body>
</html>
