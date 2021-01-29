using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace Calls
{
    public partial class CallDetails : System.Web.UI.Page
    {
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompletedCalls.aspx");
        }

        protected void pendingCallBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PendingCalls.aspx");
        }

        protected void viewCallsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCalls.aspx");
        }

        protected void transferCallBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("TransferCalls.aspx");
        }

        protected void callBackRequestBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CallBackRequest.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
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