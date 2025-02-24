﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TeacherSubject.aspx.cs" Inherits="TeacherSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <div>
            <table align="center" style="height: 340px; width: 1200px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Allocate Subject</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Teacher: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"
                            Height="40px" Width="197px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Select Teacher Name" ControlToValidate="DropDownList1" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Course: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true"
                            Height="40px" Width="197px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Select Course" ControlToValidate="DropDownList2" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Year: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true"
                            Height="40px" Width="197px" oneselectedindexchanged="DropDownList3_SelectedIndexChanged" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                            <asp:ListItem Value="0">Select Year</asp:ListItem>
                            <asp:ListItem Value="1">First Year</asp:ListItem>
                            <asp:ListItem Value="2">Second Year</asp:ListItem>
                            <asp:ListItem Value="3">Third Year</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ErrorMessage="Select Year" ControlToValidate="DropDownList3" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Semester: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true"
                            Height="40px" Width="197px" oneselectedindexchanged="DropDownList4_SelectedIndexChanged" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                            <asp:ListItem Value="0">Select Semester</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ErrorMessage="Select Semester" ControlToValidate="DropDownList4" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Subject: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="true"
                            Height="40px" Width="197px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ErrorMessage="Select Subject" ControlToValidate="DropDownList5" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" Height="47px" Width="86px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label runat="server" ID="Label1" Font-Bold="true
                            "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="red" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </center>
</asp:Content>

