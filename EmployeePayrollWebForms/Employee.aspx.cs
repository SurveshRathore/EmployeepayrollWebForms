using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection sqlConnection = new SqlConnection(@"Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EmployeePayrollWebForm;Integrated Security=True");


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand()
        }
    }
}