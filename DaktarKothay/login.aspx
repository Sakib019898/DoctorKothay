<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DaktarKothay.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">

        body
        {
            background-color:steelblue;
        }
        .formclass
        {
            padding:50px;
            margin:100px auto;
            background:#fff;
            width:500px;
            height:300px;
        }
        input
        {
            margin-left:100px;
            padding:10px;
            
        }
        #loginbtn
        {

            margin-left:150px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="formclass">
            <h2 style="text-align: center">LOGIN</h2>
            <asp:TextBox ID="TextUser" CssClass="input" placeholder="User Name" 
                runat="server" Width="256px"></asp:TextBox><br /><br />
            
            <asp:TextBox ID="TextPass" CssClass="input" placeholder="Password" TextMode="Password" 
                runat="server" Width="257px"></asp:TextBox><br /><br />

            <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="loginbtn_Click" Width="145px" />
        </div>
    </form>
</body>
</html>
