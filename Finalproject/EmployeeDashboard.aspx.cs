using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace callcentermanagement
{
    public partial class EmployeeDashboard : System.Web.UI.Page
    {

        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            da.UpdateCommand = new OleDbCommand("Update Load set username = 'emp' ", con);


            da.UpdateCommand.Connection = con;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();



            da.SelectCommand = new OleDbCommand("select * from customer",con);
            ds.Clear();
            da.Fill(ds);
            CUSLABEL.Text = (ds.Tables[0].Rows.Count.ToString());
        }

        protected void BT_logout_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            da.UpdateCommand = new OleDbCommand("Update Load set username = 'none' ", con);


            da.UpdateCommand.Connection = con;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Main_Login.aspx");
        }
    }
    }
