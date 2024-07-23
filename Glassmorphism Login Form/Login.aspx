<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div style="height: 450px;">
     <table style="width: 565px; height: 421px; background-color: #00FFFF; margin: 0 auto">
         <tr>
             <td colspan="2" align="center">&nbsp;<img id="Img1" src="Image/login2.png" alt="" runat="server" style="height: 190px; width: 199px" />
             </td>
         </tr>
         <tr>
             <td colspan="2" align="center">
                 <h2>Teacher, Admin &amp; Student Login</h2>
             </td>
         </tr>
         <tr>
             <td align="center" style="width: 50%">
                 <b>Email ID/User ID :</b>
             </td>
             <td>
                 <asp:TextBox ID="txtId" runat="server" BackColor="Transparent" Height="29px" Width="166px" Font-Bold="true" placeholder="Enter Email ID/User ID"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Enter Email ID" ForeColor="red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td align="center" style="width: 50%">
                 <b>Password :</b>
             </td>
             <td>
                 <asp:TextBox ID="txtPassword" runat="server" BackColor="Transparent" Height="29px" Width="166px" TextMode="Password" Font-Bold="true" placeholder="Enter Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td colspan="2" align="center">
                 <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="true" Height="46px" Width="201px" OnClick="Button1_Click"  BackColor="#000099" ForeColor="White"/><hr />
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label1" runat="server" ForeColor="red"  Font-Bold="true"></asp:Label>
             </td>
        <%--     <td align="right">

             </td>--%>
         </tr>
     </table>
 </div>
    </form>
</body>
</html>