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
	public partial class Admin_Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		
			
		protected void BT_Login_Click1(object sender, EventArgs e)
		{
			//string TB_UName = Request.Form["Username"];
			//string TB_Pwd= Request.Form["Password"];
			string uname = TB_UName.Text;
			string psd = TB_Pwd.Text;
			OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Login.mdb");
			con.Open();

			OleDbCommand cmd = new OleDbCommand("Select * from Admin where Username='" + TB_UName.Text + "' and Password='" + TB_Pwd.Text + "'", con);

			cmd.Connection = con;
			OleDbDataReader dr = cmd.ExecuteReader();
			if (dr.Read())

			{
				Response.Redirect("admindashboard.aspx");
			}
			else
			{
				rsmsg.Visible = true;
				rsmsg.ForeColor = System.Drawing.Color.Red;
				rsmsg.Text = "Invalid Username and Password";
			}
			con.Close();

		}

        protected void Back_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Login.aspx");
        }
    }
}
	


