<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeePayroll.aspx.cs" Inherits="EmployeePayrollWebForms.employeePayroll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 221px;
        }

        .auto-style2 {
            width: 336px;
            margin-left: 30px;
        }

        .auto-style3 {
            margin-left: 320px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size:28px;" >Employee Payroll CRUD </td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee ID</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="210px" Height="25px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style2">Employee Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Email</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Contact</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Department</td>
                <td>
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Height="25px" Width="210px">
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Designer</asp:ListItem>
                        <asp:ListItem>Sales</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>

            <tr>
                <td class="auto-style2">Employee Start date</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Salary</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Notes</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="210px" Height="25px"></asp:TextBox>

            </tr>
            <tr>
                
                <td class="auto-style2">
                    &nbsp;
                    &nbsp;
                    </td>
            </tr>
        </table>
        <p class="auto-style3">

                    <asp:Button ID="Button1" runat="server" Text="Add Employee" BackColor="#0000CC" ForeColor="White" OnClick="Button1_Click" Height="38px" />
                    <asp:Button ID="Button2" runat="server" Text="Edit Employee" BackColor="#CC00FF" ForeColor="White" Height="38px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Delete Employee" BackColor="Red" ForeColor="White" Height="38px" OnClick="Button3_Click" />

            <br />

        </p>

        <asp:GridView ID="GridView1" runat="server" Width="1284px" HorizontalAlign="Center" >
            <AlternatingRowStyle BackColor="#6699FF" />
            <HeaderStyle BackColor="#6600CC" ForeColor="White" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>

    </form>
</body>
</html>
