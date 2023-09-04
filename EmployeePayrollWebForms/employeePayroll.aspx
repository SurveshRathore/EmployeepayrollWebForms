<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeePayroll.aspx.cs" Inherits="EmployeePayrollWebForms.employeePayroll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 497px;
        }

        .auto-style2 {
            width: 144px;
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
                <td class="auto-style2" style="font-size: 28px;">Employee Payroll&nbsp; CRUD</td>
                <td class="auto-style1">&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">Employee ID</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="210px" Height="25px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">Employee Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="210px" Height="25px"></asp:TextBox>
                
            </tr>

            <tr>
                <td class="auto-style2">Employee Gender</td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">Employee Email</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server" Width="210px" Height="25px"></asp:TextBox>
                
            </tr>
            <tr>
                <td class="auto-style2">Employee Contact</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox4" runat="server" Width="210px" Height="25px"></asp:TextBox>
                
            </tr>
            <tr>
                <td class="auto-style2">Employee Department</td>
                <td class="auto-style1">
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Height="30px" Width="215px">
                        <asp:ListItem>  -- Select Department --  </asp:ListItem>
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
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox5" runat="server" Width="210px" Height="25px"></asp:TextBox>
                
            </tr>
            <tr>
                <td class="auto-style2">Employee Salary</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox6" runat="server" Width="210px" Height="25px"></asp:TextBox>
                
            </tr>
            <tr>
                <td class="auto-style2">Employee Notes</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox7" runat="server" Width="210px" Height="25px"></asp:TextBox>

            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Add Employee" BackColor="#0000CC" ForeColor="White" OnClick="Button1_Click" Height="38px" />&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Update Employee" BackColor="#CC00FF" ForeColor="White" Height="38px" OnClick="Button2_Click" />&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Delete Employee" BackColor="Red" ForeColor="White" Height="38px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
        <p class="auto-style3">

            <br />

        </p>

        <asp:GridView ID="GridView1" runat="server" Width="1286px" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#CCCCFF" />
            <EditRowStyle HorizontalAlign="Center" />
            <HeaderStyle BackColor="#6600CC" ForeColor="White" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>

    </form>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $('#TextBox2').on('keyup', function () {
            const searchText = $(this).val();
            $('#GridView1 tbody tr').each(function () {
                const rowData = $(this).text();
                if (rowData.includes(searchText)) {
                    $(this).show();
                }// else {
                //    $(this).hide();
                //}
            });
        });
    });
</script>