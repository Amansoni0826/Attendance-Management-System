<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Student_Defaulter.aspx.cs" Inherits="Student_Defaulter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width:386px">
        <tr>
            <td align="center">
                <h3>Select:</h3>
            </td>
            <td align="center">
                <input name="startDate" id="Text1" class="date-picker" runat="server" value="" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button runat="server" ID="Button1" Text="Select" Font-Bold="true" Font-Size="Large" Height="44px" Width="103px" OnClick="Button1_Click"     />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button runat="server" ID="Label1" Font-Bold="true" Font-Size="Large" ForeColor="#9900cc"  />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button runat="server" ID="Label2" Font-Bold="true" Font-Size="Large" ForeColor="#9900cc" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button runat="server" ID="Label3" Font-Bold="true" Font-Size="Large"  />
            </td>
        </tr>
    </table>
</asp:Content>

