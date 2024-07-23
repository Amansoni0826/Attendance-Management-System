<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Glassmorphism Register Form </title>
    <link rel="stylesheet" href="style/style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <di action="#">
                <h2 class="text-white">Register</h2>
                <div class="input-field text-start">
                    <asp:Label ID="Label1" runat="server" CssClass="text-white">Enter Full Name</asp:Label>
                    <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvfullname" ErrorMessage="Name is required " ControlToValidate="txtName" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field text-start">
                    <asp:Label ID="Label2" runat="server" CssClass="text-white">Enter Your Email</asp:Label>
                    <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvemail" ErrorMessage="Email is required " ControlToValidate="txtEmail" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field text-start">
                    <asp:Label ID="Label3" runat="server" CssClass="text-white">Enter User Name</asp:Label>
                    <asp:TextBox runat="server" ID="txtUsername"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvUsername" ErrorMessage="Username is required " ControlToValidate="txtUsername" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field text-start">
                    <asp:Label ID="Label4" runat="server" CssClass="text-white">Enter Your Passsword</asp:Label>
                    <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvPassword" ErrorMessage="Password is required " ControlToValidate="txtPassword" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="form-control" />
                <div class="register mt-2">
                    <p class="text-white">Alerady Register? <a href="Login.aspx">Login Here</a></p>
                </div>
            </di>
        </div>
    </form>
</body>
</html>
