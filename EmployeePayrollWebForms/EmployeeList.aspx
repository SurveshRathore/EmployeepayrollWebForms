<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="EmployeePayrollWebForms.EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;"><asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#0000CC" Text="Employee List"></asp:Label></div>
        <div>

            <asp:Button ID="Button1" runat="server" BackColor="#0000CC" ForeColor="White" OnClick="Button1_Click" Text="Add Employee" />

        </div>
        <p>
            &nbsp;</p>

        <asp:GridView ID="GridView1" runat="server" Width="1180px" AutoGenerateColumns="False" DataKeyNames="EmployeeID" OnRowEditing="GridView1_RowEditing"  OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
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
        </asp:GridView>

    </form>
</body>
</html>
