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
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetProductList();
            }
        }

        SqlConnection sqlConnection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=EmployeePayrollWebForm;Integrated Security=True;");

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


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetProductList();
        }



        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeePayroll.aspx");
        }
    }
}
  