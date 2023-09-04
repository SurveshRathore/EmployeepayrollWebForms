using System;
using System.Collections.Generic;
using System.Data;
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
            if (!IsPostBack)
            {
                GetProductList();
            }
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
                GetProductList();
                sqlConnection.Close();
                //TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = String.Empty;
                //RadioButtonList1.ClearSelection();
                //DropDownList1.ClearSelection();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        void GetProductList()
        {
            try
            {
                SqlCommand sqlCommand = new SqlCommand("exec spGetAllEmployee", sqlConnection);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //update the   record
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text), salary = int.Parse(TextBox6.Text);
                string name = TextBox2.Text, gender = RadioButtonList1.SelectedValue, department = DropDownList1.SelectedValue, email = TextBox3.Text, notes = TextBox7.Text;
                long contact = long.Parse(TextBox4.Text);
                DateTime startDate = DateTime.Parse(TextBox5.Text);


                sqlConnection.Open();
                //string query = "spAddEmployee"
                SqlCommand sqlCommand = new SqlCommand("exec spUpdateEmployee '" + id + "','" + name + "','" + gender + "','" + email + "','" + contact + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "' ", sqlConnection);

                sqlCommand.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successful update the record.');", true);
                GetProductList();
                sqlConnection.Close();
                //TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = String.Empty;
                //RadioButtonList1.ClearSelection();
                //DropDownList1.ClearSelection();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        // Delete the record
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(TextBox1.Text);

                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand("exec spDeleteEmployee '" + id + "'", sqlConnection);
                sqlCommand.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully delete the employee record.');", true);
                GetProductList();
                TextBox1.Text = String.Empty;
                sqlConnection.Close();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}