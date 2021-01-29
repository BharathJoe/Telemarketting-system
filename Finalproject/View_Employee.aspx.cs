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
	public partial class View_Employee : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void BT_View_Click(object sender, EventArgs e)
		{
			OleDbConnection con = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();

			da.SelectCommand = new OleDbCommand("Select * from Emp_Details where Emp_id = '" + TB_EmpID.Text + "'", con);
            da.SelectCommand.Connection = con;
			con.Open();
			ds.Clear();
			da.Fill(ds);
			Emp_GView.DataSource = ds.Tables[0];
			Emp_GView.DataBind();
		}

		protected void BT_Viewall_Click(object sender, EventArgs e)
		{
			OleDbConnection con = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
			DataSet ds = new DataSet();

			da.SelectCommand = new OleDbCommand("Select * from Emp_Details", con);
			da.SelectCommand.Connection = con;
			con.Open();
			ds.Clear();
			da.Fill(ds);
			Emp_GView.DataSource = ds.Tables[0];
			Emp_GView.DataBind();
		}

		protected void BT_Clear_Click(object sender, EventArgs e)
		{
			TB_EmpID.Text = "";
			Emp_GView.DataSource = null;
			Emp_GView.DataBind();
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
            else
            {
                Response.Redirect("HRDASHBOARD.aspx");
            }
            

            con.Close();
        }
    }
	}
