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

namespace Calls
{
    public partial class ViewCalls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridview();
            
            if (!IsPostBack)
            {
                BindDropDown();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tempID = idDropdown.SelectedItem.Text;
            string tempStatus = statusDropDown.SelectedItem.Text;
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();

            da.UpdateCommand = new OleDbCommand("update AllCalls set status = '"+ tempStatus + "' where ID = " + tempID, con);
            da.UpdateCommand.Connection = con;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();
            BindGridview();
        }
        void BindDropDown()
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da2 = new OleDbDataAdapter();
            DataSet ds2 = new DataSet();
            da2.SelectCommand = new OleDbCommand("Select ID from AllCalls", con);

            da2.SelectCommand.Connection = con;
            con.Open();
            ds2.Clear();
            da2.Fill(ds2);

            idDropdown.DataSource = ds2.Tables[0];
            idDropdown.DataTextField = "ID";

            idDropdown.DataBind();
        }
        public void BindGridview()
        {

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da1 = new OleDbDataAdapter();

            DataSet ds1 = new DataSet();

            da1.SelectCommand = new OleDbCommand("Select * from AllCalls", con);

            da1.SelectCommand.Connection = con;

            con.Open();
            ds1.Clear();
            da1.Fill(ds1);

            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CallDetails.aspx");
        }
    }
}