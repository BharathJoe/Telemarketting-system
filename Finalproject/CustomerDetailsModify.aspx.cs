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
    public partial class CustomerDetailsModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MDFY_BTN_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();

            da.UpdateCommand = new OleDbCommand("update customer set Cus_ID = " + ID_TEXT.Text + ", Cus_Name = '" + Name_TXT.Text + "', Occup = '" + JOB_TXT.Text + "',Email='" + Email_TXT.Text +"',PhoneNo= "+PHONE_TXT.Text+" where Cus_ID = " + ID_TEXT.Text , con);
            da.UpdateCommand.Connection = con;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();
            Result_LBL.Text = "Customer Details have been Updated Successfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            da.SelectCommand = new OleDbCommand("Select * from customer", con);
            da.SelectCommand.Connection = con;
            con.Open();
            ds.Clear();
            da.Fill(ds);
            DETAIL_GV.Visible = true;
            DETAIL_GV.DataSource = ds.Tables[0];
            DETAIL_GV.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();

            da.DeleteCommand = new OleDbCommand("Delete from customer where Cus_ID = " + ID_TEXT.Text, con);
            da.DeleteCommand.Connection = con;

            con.Open();
            da.DeleteCommand.ExecuteNonQuery();
            con.Close();
            Result_LBL.Text = "Customer has been deleted Successfully";
        }

       
      
    }
}