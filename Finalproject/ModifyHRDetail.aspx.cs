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
    public partial class ModifyHRDetail : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_Update_Click(object sender, EventArgs e)
        {
            da.SelectCommand = new OleDbCommand("select * from HRDETAILS where HRid='" + id.Text + "'",con);
            ds.Clear();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count <= 0)
            {
                status .Visible = true;
                status .Text = "No Data found";
            }
            else
            {
                con.Open();
                da.InsertCommand = new OleDbCommand("update HRDETAILS set HRname='" + name .Text + "', DOB='"+dob .Text +"',StartDate='"+startdate .Text +"', Address ='"+address .Text +"',Emailid='"+eid .Text + "', Mobileno = '"+mobile.Text + "', Salary='"+salary .Text + "' where HRid = '"+id .Text +"'" , con);
                da.InsertCommand.ExecuteNonQuery();
                status .Visible = true;
                status .Text = "Successfully updated";
                con.Close();
            }
        }

        protected void BT_Clear_Click(object sender, EventArgs e)
        {

            id.Text = "";
            name.Text = "";
            dob.Text = "";
            startdate.Text = "";
            address.Text = "";
            eid.Text = "";
            mobile.Text = "";
            salary.Text = "";
            status.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");
        }
    }
}
