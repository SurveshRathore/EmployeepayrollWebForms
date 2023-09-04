using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms
{
    public partial class employeePayroll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection sqlConnection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=EmployeePayrollWebForm;Integrated Security=True;");
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text), salary = int.Parse(TextBox6.Text);
                string name = TextBox2.Text, gender = RadioButtonList1.SelectedValue, department = DropDownList1.SelectedValue, email = TextBox3.Text, notes = TextBox7.Text;
                long contact = long.Parse(TextBox4.Text);
                DateTime startDate = DateTime.Parse(TextBox5.Text);


                sqlConnection.Open();
                //string query = "spAddEmployee"
                //SqlCommand sqlCommand = new SqlCommand("exec spAddEmployee '" + id + "','" + name + "','" + gender + "','" + email + "','" + contact + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "','" + sqlConnection);
                SqlCommand sqlCommand = new SqlCommand("exec spAddEmployee '" + name + "','" + gender + "','" + email + "','" + contact + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "' " , sqlConnection);
                sqlCommand.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successful Inserted.');", true);
                sqlConnection.Close();

            }
            catch (Exception ex)
            {

                throw ex;
            }
            




        }
    }
}