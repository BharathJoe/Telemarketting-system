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
    public partial class AddHRdetails : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BT_Add_Click(object sender, EventArgs e)
        {
            da.SelectCommand = new OleDbCommand("select * from HRDETAILS where HRid='" + id.Text  + "'", con);
            ds.Clear();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                status.Visible = true;
                status.Text = "HR ID already Exists";
            }
            else
            {
                con.Open();
                da.InsertCommand = new OleDbCommand("Insert into HRDETAILS values(@HRid,@HRname,@DOB,@StartDate,@Address,@Emailid,@Mobileno,@Salary)",con);
                da.InsertCommand.Parameters.AddWithValue("@HRid",id.Text);
                da.InsertCommand.Parameters.AddWithValue("@HRname",name.Text);
                da.InsertCommand.Parameters.AddWithValue("@DOB",dob.Text);
                da.InsertCommand.Parameters.AddWithValue("@StartDate",startdate.Text);
                da.InsertCommand.Parameters.AddWithValue("@Address",address.Text);
                da.InsertCommand.Parameters.AddWithValue("@Emailid",eid.Text);
                da.InsertCommand.Parameters.AddWithValue("@Mobileno",mobile.Text);
                da.InsertCommand.Parameters.AddWithValue("@Salary",salary.Text);
                da.InsertCommand.ExecuteNonQuery();
                status.Visible = true;
                status.Text = "Successfully Inserted";
                con.Close();
                


            }
        }

        protected void BT_Clear_Click(object sender, EventArgs e)
        {
            id .Text = "";
            name .Text = "";
            dob .Text = "";
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