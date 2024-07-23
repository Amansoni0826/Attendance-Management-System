<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <div>
            <table align="center" style="height: 340px; width: 392px;">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Add Teacher</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>First Name: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="197px" Height="41px"
                            CausesValidation="true" placeholder="Teacher's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="First Name is Empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2"
                            ControlToValidate="TextBox2" ErrorMessage="Name Should Be In Characters" ForeColor="red"
                            ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Last Name: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="197px" Height="41px"
                            CausesValidation="true" placeholder="Teacher's Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="First Name is Empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1"
                            ControlToValidate="TextBox4" ErrorMessage="Name Should Be In Characters" ForeColor="red"
                            ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email Id: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="197px" Height="41px"
                            placeholder="Teacher Email Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Id is Empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Password: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="197px" Height="41px" TextMode="Password"
                            placeholder="Teacher Passwaor"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Password is Empty"
                            ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button runat="server" Text="Add" Font-Bold="true" Height="47px" Width="96px" Font-Size="Medium" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label runat="server" ID="label1" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
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

