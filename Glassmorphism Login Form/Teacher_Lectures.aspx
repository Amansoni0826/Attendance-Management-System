<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.master" AutoEventWireup="true" CodeFile="Teacher_Lectures.aspx.cs" Inherits="Teacher_Lectures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <div>
            <table align="center" style="width: 1200px; height: 366px">
                <tr style="width:1200px;">
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
                        <asp:DropDownList runat="server" ID="DropDownList2" Height="40px" Width="125px" AutoPostBack="true">
                            <asp:ListItem Value="0">Select Year</asp:ListItem>
                            <asp:ListItem Value="1">First Year</asp:ListItem>
                            <asp:ListItem Value="2">Second Year</asp:ListItem>
                            <asp:ListItem Value="3">Third Year</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>
                        <b>Semester:</b>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="DropDownList5" Height="40px" Width="125px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
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
                        <asp:DropDownList runat="server" ID="DropDownList3" Height="40px" Width="215px" AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="width: 1200px">
                    <td colspan="11" align="center">
                        <b>Date:</b>
                        <asp:TextBox runat="server" ID="TextBox1" Type="Date" placeholder="Select Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="11" align="center">
                        <asp:Button runat="server" ID="Button1" Text="Select" Font-Bold="true" Height="40px" Width="92px" OnClick="Button1_Click" />
                    </td>
                </tr>
                 <tr>
                    <td colspan="11" align="center">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                  <tr>
                    <td colspan="11" align="center">
                       <asp:GridView runat="server" ID="GridView1" EmptyDataText="No Such Records Founds ">
                       </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </center>
</asp:Content>

