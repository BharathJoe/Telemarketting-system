using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace Finalproject
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_dailyreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("DailyReportGeneration.aspx");
        }

        protected void BT_Monthlyreport_Click(object sender, EventArgs e)
        {
            Response.Redirect("MonthlyReport.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source =E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            con.Open();
            OleDbCommand cmd = new OleDbCommand("Select username from Load  where id = '1'  ", con);
            cmd.Connection = con;
            string Username = Convert.ToString(cmd.ExecuteScalar());

            if (Username == "admin")
            {
                Response.Redirect("admindashboard.aspx");
            }
            else if (Username == "hr")
            {
                Response.Redirect("HRDASHBOARD.aspx");
            }
            else
            {
                Response.Redirect("EmployeeDashboard.aspx");
            }

            con.Close();
        }
    }
}