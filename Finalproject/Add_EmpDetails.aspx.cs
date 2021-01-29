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
	public partial class Add_EmpDetails : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void BT_Add_Click(object sender, EventArgs e)
		{
			if(TB_EmpID.Text == " " || TB_Empname.Text == "" || TB_DOB.Text == "" || TB_designation.Text == "" || TB_Whours.Text=="" || TB_sal.Text=="" || TB_address.Text ==""||TB_email.Text==""||TB_mobile.Text =="")
			
			{
				rsmsg.Visible = true;
				rsmsg.ForeColor = System.Drawing.Color.Red;
				rsmsg.Text = "Fill up empty fields";
			}
			else
			{
				OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
                OleDbDataAdapter da = new OleDbDataAdapter();
				DataSet ds = new DataSet();
				da.InsertCommand = new OleDbCommand("Insert into Emp_Details values (@Emp_id,@Emp_Name,@Dob,@Designation,@Whours,@Salary,@Address,@Email_id,@Mobile_no)");
				da.InsertCommand.Connection = con;
				da.InsertCommand.Parameters.Add("@Emp_id", OleDbType.VarChar).Value = TB_EmpID.Text.ToString();
				da.InsertCommand.Parameters.Add("@Emp_Name", OleDbType.VarChar).Value = TB_Empname.Text.ToString();
				da.InsertCommand.Parameters.Add("@Dob", OleDbType.VarChar).Value = TB_DOB.Text.ToString();
				da.InsertCommand.Parameters.Add("@Designation", OleDbType.VarChar).Value = TB_designation.Text.ToString();
				da.InsertCommand.Parameters.Add("@Whours", OleDbType.VarChar).Value = TB_Whours.Text.ToString();
				da.InsertCommand.Parameters.Add("@Salary", OleDbType.VarChar).Value = TB_sal.Text.ToString();
				da.InsertCommand.Parameters.Add("@Address", OleDbType.VarChar).Value = TB_address.Text.ToString();
				da.InsertCommand.Parameters.Add("@Email_id", OleDbType.VarChar).Value = TB_email.Text.ToString();
				da.InsertCommand.Parameters.Add("@Mobile_no", OleDbType.VarChar).Value = TB_mobile.Text.ToString();

				con.Open();
				da.InsertCommand.ExecuteNonQuery();
				con.Close();
				rsmsg.ForeColor = System.Drawing.Color.Green;
				rsmsg.Text = "Inserted Successfully";
				rsmsg.Visible = true;
			}
		}

        protected void BT_Clear_Click(object sender, EventArgs e)
        {
            TB_EmpID.Text = " ";
            TB_Empname.Text = " ";
            TB_DOB.Text = "";
            TB_designation.Text = " ";
            TB_Whours.Text = " ";
            TB_sal.Text = " ";
            TB_mobile.Text = " ";
            TB_address.Text = "";
            TB_email.Text = " ";
            rsmsg.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HRDASHBOARD.aspx");
        }
    }
}