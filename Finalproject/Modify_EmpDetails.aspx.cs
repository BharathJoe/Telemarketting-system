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
	public partial class Modify_EmpDetails : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void BT_update_Click(object sender, EventArgs e)
        {
            if (TB_EmpID.Text == " " || TB_Empname.Text == "" || TB_DOB.Text == "" || TB_designation.Text == "" || TB_Whours.Text == "" || TB_sal.Text == "" || TB_address.Text == "" || TB_email.Text == "" || TB_mobile.Text == "")

            {
                rsmsg.Visible = true;
                rsmsg.ForeColor = System.Drawing.Color.Red;
                rsmsg.Text = "Fill up empty fields";
            }
            else
            {

                OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source =E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
                OleDbDataAdapter da = new OleDbDataAdapter();
                DataSet ds = new DataSet();
                da.UpdateCommand = new OleDbCommand("Update Emp_Details set Emp_Name = '" + TB_Empname.Text + "', Dob = '" + TB_DOB.Text + "', Designation = '" + TB_designation.Text + "', Whours = '" + TB_Whours.Text + "', Salary = '" + TB_sal.Text + "', Address = '" + TB_address.Text + "', Email_id = '" + TB_email.Text + "', Mobile_no = '" + TB_mobile.Text + "' where Emp_id = '" + TB_EmpID.Text + "' ", con);
                da.UpdateCommand.Connection = con;

                con.Open();
                da.UpdateCommand.ExecuteNonQuery();
                con.Close();
                rsmsg.Visible = true;
                rsmsg.Text = "Updated Successfully";

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
    }
}
