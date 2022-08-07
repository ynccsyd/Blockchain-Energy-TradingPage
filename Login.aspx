<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Blockchain</title>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/signin.css" rel="stylesheet" />
    <style style="background-image: url('http://localhost:63828/Images/L.jpg')">
       body {
       background-image: url('Images/LB.jpg');
  
       background-size: cover;


        }
    </style>
</head>
<body>
    <div class="container">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <form class="form-signin" runat="server">
            <h3 class="alert alert-success">Energy Trading</h3>
            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="User Name" runat="server"
                required autofocus />
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" runat="server" id="inputPassword" class="form-control" placeholder="Password"
                required />
                        <asp:Button runat="server" CssClass="btn btn-lg btn-success btn-block" 
                Text="Sign In" ID="btnLogin" OnClick="btnLogin_Click" />
             <asp:Button runat="server" CssClass="btn btn-lg btn-success btn-block" 
                Text="Sign Up" ID="BtnSignUp" OnClick="BtnSignUp_Click" />
                
            
        </form>

    </div>
</body>
</html>
