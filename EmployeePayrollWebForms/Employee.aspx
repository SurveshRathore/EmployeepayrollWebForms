<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmployeePayrollWebForms.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .textbox {
            width: 250px;
        }

        #add{
            background-color:aqua;
        }
        #edit{}
        #delete{}
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <th colspan="2">Employee CRUD operations</th>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee ID</td>
                    <td>
                        <input id="Text1" type="text" class="textbox" /></td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Name</td>
                    <td>
                        <input id="Text1" type="text" class="textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Gender</td>
                    <td>
                        <input id="gender" type="radio" />
                        Male
                        <input id="gender" type="radio" />
                        Female
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Email</td>
                    <td>
                        <input id="Text1" type="text" class="textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Contact</td>
                    <td>
                        <input id="Text1" type="number" class="textbox" /></td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Department</td>
                    <td>
                        <select id="Select1" name="department" class="textbox">
                            <option>HR</option>
                            <option>Developer</option>
                            <option>Engineer</option>
                            <option>Sales</option>
                            <option>Manager</option>
                            <option>Others</option>
                        </select></td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Start Date</td>
                    <td>
                        <input id="Text1" type="text" class="textbox"/></td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Salary</td>
                    <td>
                        <input id="Text1" type="text" class="textbox"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Notes</td>
                    <td>
                        <input id="Text1" type="text" class="textbox"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        
                        <input id="add" type="button" value="Add Employee" />
                        <input id="edit" type="button" value="Edit Employee" />
                        <input id="delete" type="button" value="Delete Employee" /></td>
                </tr>
                
            </table>
        </div>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1081px">
            <HeaderStyle BackColor="#6666FF" BorderColor="Black" ForeColor="White" />
        </asp:GridView>
    </form>
</body>
</html>
