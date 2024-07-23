<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.master" AutoEventWireup="true" CodeFile="Mark_Attendance.aspx.cs" Inherits="Mark_Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <div style="">
            <center>
                <table align="center" style="width: 1200px; height: 366px">
                    <tr style="width: 1200px;">
                        <td>
                            <b>Course:</b>
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="DropDownList1" Height="40px" Width="115px" AutoPostBack="true"></asp:DropDownList>
                        </td>
                        <td>&nbsp;
                        </td>
                        <td>
                            <b>Year:</b>
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="DropDownList2" Height="40px" Width="115px" AutoPostBack="true">
                                <asp:ListItem>Select Year</asp:ListItem>
                                <asp:ListItem>First Year</asp:ListItem>
                                <asp:ListItem>Second Year</asp:ListItem>
                                <asp:ListItem>Third Year</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;
                        </td>
                        <td>
                            <b>Semester:</b>
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="DropDownList5" Height="40px" Width="115px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                                <asp:ListItem>Select Semester</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;
                        </td>
                        <td>
                            <b>Subject:</b>
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="DropDownList3" Height="40px" Width="215px" AutoPostBack="true"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr style="width: 1200px;">
                        <td colspan="10" align="center">
                            <b>Total Lectures:</b>
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10" align="center">
                            <asp:Button runat="server" ID="Button1" Text="Select" Font-Bold="True" Height="40px" Width="92px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10" align="center">
                            <asp:Label runat="server" ID="Label4" Font-Bold="True" ForeColor="#9900FF"></asp:Label>
                            <asp:Label runat="server" ID="Label1" type="date"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10" align="center">
                            <asp:GridView ID="GridView1" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText=" Mark Attendance">
                                        <ItemTemplate>
                                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="attend" Text="Present" />
                                            &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="attend" Text="Absent" />
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text=" No Such Records Found"></asp:Label>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10" align="center">
                            <asp:Button runat="server" ID="Button2" Text="Mark Attendance" Font-Bold="True" Height="40px" Width="143px" OnClick="Button2_Click" />
                        </td>
                    </tr> 
                    <tr>
                        <td colspan="10" align="center">
                            <asp:Label runat="server" ID="Label3" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </center>
</asp:Content>

