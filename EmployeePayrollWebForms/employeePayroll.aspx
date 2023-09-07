﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeePayroll.aspx.cs" Inherits="EmployeePayrollWebForms.employeePayroll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 221px;
        }

        .auto-style2 {
            width: 293px;
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
                <td class="auto-style2">Employee Payroll CRUD </td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                <td>

                    <asp:Button ID="Button2" runat="server" BackColor="#0000CC" ForeColor="White" OnClick="Button2_Click1" Text="Show List" />

                </td>
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
                <td>Employee Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Employee Email</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Employee Contact</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Employee Department</td>
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
                <td>Employee Start date</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Employee Salary</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="210px" Height="25px"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Employee Notes</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="210px" Height="25px"></asp:TextBox>

            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add Employee" BackColor="#0000CC" ForeColor="White" OnClick="Button1_Click" Height="33px" />&nbsp;
                    <%--<asp:Button ID="Button2" runat="server" Text="Edit Employee" BackColor="#CC00FF" ForeColor="White" Height="33px" />&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Delete Employee" BackColor="Red" ForeColor="White" Height="33px" />--%>
                </td>
            </tr>
        </table>
        <p class="auto-style3">

            <br />

        </p>

<%--        <asp:GridView ID="GridView1" runat="server" Width="1180px" AutoGenerateColumns="False" DataKeyNames="EmployeeID" OnRowEditing="GridView1_RowEditing"  OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="EmployeeName" HeaderText="Name" />
                <asp:BoundField DataField="EmployeeGender" HeaderText="Gender" />
                <asp:BoundField DataField="EmployeeEmail" HeaderText="Email" />
                <asp:BoundField DataField="EmployeeContact" HeaderText="Contact Number" />
                <asp:BoundField DataField="EmployeeDepartment" HeaderText="Department" />
                <asp:BoundField DataField="EmployeeStartDate" HeaderText="Start Date" />
                <asp:BoundField DataField="EmployeeSalary" HeaderText="Salary" />
                <asp:BoundField DataField="EmployeeNotes" HeaderText="Notes" />
                <asp:CommandField AccessibleHeaderText="Action" ButtonType="Button" ShowEditButton="True" >
                <ControlStyle BackColor="#000099" ForeColor="White" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="Red" ForeColor="White" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BackColor="#6600CC" ForeColor="White" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>--%>

    </form>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
      $( "#TextBox5" ).datepicker();
  } );
  </script>