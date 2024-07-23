<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <div style="background-image: url(''); width: 120px">
            <table align="center" style="height: 340px; width: 391px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Add Subject
                        </h2>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Course: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="DropDownList1" AutoPostBack="true" Height="40px" Width="197px"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Year: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="DropDownList2" AutoPostBack="true" Height="40px" Width="197px"
                           OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem Value="0"> Select Year</asp:ListItem>
                            <asp:ListItem Value="1">First Year</asp:ListItem>
                            <asp:ListItem Value="2">Second Year</asp:ListItem>
                            <asp:ListItem Value="3">Third Year</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Semester: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Height="40px" Width="197px">
                            <asp:ListItem Value="0">Select Semester</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Subject: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox1" Width="197px" Height="41px" CausesValidation="true"
                            placeholder="Subject Name"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" 
                            ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="Enter Subject Name"></asp:RequiredFieldValidator>
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
                    <td colspan="2" align="center">
                        <asp:GridView runat="server" ID="GridView1"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </center>
</asp:Content>

