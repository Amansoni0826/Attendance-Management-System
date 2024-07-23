<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <div style="background-image: url(''); width: 120px">
            <table align="center" style="height: 340px; width: 391px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Add Student
                        </h2>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>First Name: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox1" Width="197px" Height="41px" placeholder="Student's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TextBox1" ErrorMessage="First Name is empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ControlToValidate="TextBox1" ErrorMessage="Name Should be in Characters"
                            ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Last Name: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox5" Width="197px" Height="41px" placeholder="Student's Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="TextBox5" ErrorMessage="Last Name is empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="TextBox5" ErrorMessage="Name Should be in Characters"
                            ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Roll_No: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox4" Width="197px" Height="41px" placeholder="Student's Roll_No"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="TextBox4" ErrorMessage="Roll_No is empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ControlToValidate="TextBox4" ErrorMessage="Roll_No Invalid"
                            ForeColor="Red" ValidationExpression="[0-9]{7}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox2" Width="197px" Height="41px" placeholder="Student Email_Id"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="TextBox2" ErrorMessage="Email is empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Contact_No: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox3" Width="197px" Height="41px" placeholder="Student's Phone_No."></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="TextBox3" ErrorMessage="Contact_No is empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" ControlToValidate="TextBox3" ErrorMessage="Contact_No Invalid"
                            ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <b>Password: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox6" Width="197px" Height="41px" TextMode="Password" placeholder="Student's Password."></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="TextBox6" ErrorMessage="Password is empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td> 
                        <b>Course: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="DropDownList2" AutoPostBack="true" Height="40px" Width="197px"></asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="DropDownList2" ErrorMessage="Select Course"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Year: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="DropDownList3" AutoPostBack="true" Height="40px" Width="197px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                            <asp:ListItem Value="0"> Select Year</asp:ListItem>
                            <asp:ListItem Value="1">First Year</asp:ListItem>
                            <asp:ListItem Value="2">Second Year</asp:ListItem>
                            <asp:ListItem Value="3">Third Year</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="DropDownList3" ErrorMessage="Select Year"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Semester: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="40px" Width="197px">
                            <asp:ListItem Value="0">Select Semester</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="DropDownList1" ErrorMessage="Select Semester"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button runat="server" ID="Button1" Text="Add" Font-Bold="true"
                            Height="47px" Width="86px" Font-Size="Medium" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label runat="server" ID="Label1" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary runat="server" ID="ValidationSummary1" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:GridView runat="server" ID="GridView1"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </center>
</asp:Content>

