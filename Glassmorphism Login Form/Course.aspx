<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <center>
        <div>
            <table align="center" style="width: 386px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Cousre</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Course:&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox runat="server" ID="TextBox1" Height="44px" Width="230px" CausesValidation="True"
                            placeholder="Course Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="red"
                            ErrorMessage="Enter Course Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="style1">
                        <asp:Button runat="server" ID="Button1" Text="Add" Height="44px" Width="" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label runat="server" ID="Label1" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <div align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" Height="202px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="4" Width="257px">
                    <Columns>
                        <asp:TemplateField HeaderText="Course">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("CourseName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
   </center>
</asp:Content>

