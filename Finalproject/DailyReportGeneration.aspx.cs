using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;

namespace Telemarkating
{
    public partial class DailyReportGeneration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();

            da.SelectCommand = new OleDbCommand("Select * from report where Emp_ID = '" + EMP_ID.Text + "'", con);
            da.SelectCommand.Connection = con;
            con.Open();
            ds.Clear();
            da.Fill(ds);
            Report_GV.Visible = true;
            Report_GV.DataSource = ds.Tables[0];
            Report_GV.DataBind();
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Reports.aspx");
        }
    }
}