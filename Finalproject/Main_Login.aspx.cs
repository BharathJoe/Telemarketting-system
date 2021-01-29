using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Finalproject
{
	public partial class Main_Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void BT_Admin_Login_Click(object sender, EventArgs e)
		{
			Response.Redirect("Admin_Login.aspx");
		}

		protected void BT_HR_Login_Click(object sender, EventArgs e)
		{
			Response.Redirect("HR_Login.aspx");
		}

		protected void BT_Emp_Login_Click(object sender, EventArgs e)
		{
			Response.Redirect("Employee_Login.aspx");

		}
	}
}