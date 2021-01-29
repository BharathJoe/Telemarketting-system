using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


namespace Telemarkating
{
    public partial class CustomerDetailsAdd : System.Web.UI.Page
    {
        protected void View_BTN_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb;");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            da.SelectCommand = new OleDbCommand("Select * from customer", con);
            da.SelectCommand.Connection = con;
            con.Open();
            ds.Clear();
            da.Fill(ds);
            DETAIL_GV.DataSource = ds.Tables[0];
            DETAIL_GV.DataBind();
        }

        protected void ADD_BTN_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            da.InsertCommand = new OleDbCommand("Insert into customer values (@Cus_ID,@Cus_Name,@Occup,@Email,@phone_no)");
            da.InsertCommand.Connection = con;
            da.InsertCommand.Parameters.Add("@Cus_ID", OleDbType.VarChar).Value = ID_TEXT.Text.ToString();
            da.InsertCommand.Parameters.Add("@Cus_Name", OleDbType.VarChar).Value = Name_TXT.Text.ToString();
            da.InsertCommand.Parameters.Add("@Occup", OleDbType.VarChar).Value = JOB_TXT.Text.ToString();
            da.InsertCommand.Parameters.Add("@Email", OleDbType.VarChar).Value = Email_TXT.Text.ToString();
            da.InsertCommand.Parameters.Add("@phoneNo", OleDbType.VarChar).Value = PHONE_TXT.Text.ToString();
            con.Open();
            da.InsertCommand.ExecuteNonQuery();
            con.Close();
            Result_LBL.Text = "Customer Details have been Inserted Successfully";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDashboard.aspx");
        }
    }
}
