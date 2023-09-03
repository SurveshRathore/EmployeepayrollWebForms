<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmployeePayrollWebForms.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .FormContent{
            width: 800px;
            margin-left:  30px;
        }
        .textbox {
            width: 250px;
            height: 25px;
        }
        .deptTextbox{
            width: 260px;
            height: 25px;
        }

        .headingRow{
            margin-bottom: 20px;
           
        }

        .headingRowContent{
            font-size: medium;
            
        }

        #add{
            background-color: blue;
            color: white;
        }
        #edit{
            background-color: fuchsia;
            color: white;
        }
        #delete{
            background-color: crimson;
            color:white;
        }

        
        .auto-style1 {
            height: 36px;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            height: 36px;
        }
        
        
        
        .auto-style4 {
            width: 100%;
        }
        
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="FormContent">
            <table class="auto-style4">
                <tr class="headingRow">
                    <th class="headingRowContent" colspan="2" style="font-family: 'Arial Black'; font-size: medium; font-weight: 300; font-style: normal; font-variant: normal; color: #000080">Employee CRUD Operations&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th>
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
                        <select id="Select1" name="department" class="deptTextbox">
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
                        
                        <input id="add" type="button" value="Add Employee" class="auto-style1" />
                        <input id="edit" type="button" value="Edit Employee" class="auto-style2" />
                        <input id="delete" type="button" value="Delete Employee" class="auto-style3" /></td>
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
