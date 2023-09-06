using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

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
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = String.Empty;
                RadioButtonList1.ClearSelection();
                DropDownList1.ClearSelection();

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
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = String.Empty;
                RadioButtonList1.ClearSelection();
                DropDownList1.ClearSelection();

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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetProductList();
        }

      

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) ;
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string gender = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string contact = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string department = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            DateTime startDate = Convert.ToDateTime(((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text);
            int salary = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string notes = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;

            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("exec spUpdateEmployee '" + id + "','" + name + "','" + gender + "','" + email + "','" + contact + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "' ", sqlConnection);
            
            sqlCommand.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully update the employee record.');", true);
            GridView1.EditIndex = -1;
            GetProductList();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetProductList();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("exec spDeleteEmployee '" + id + "' ", sqlConnection);
            sqlCommand.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully delete the employee record.');", true);
            GridView1.EditIndex = -1;
            GetProductList();
        }
    }
}