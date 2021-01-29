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

namespace telemarketing_feedback
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder html = new StringBuilder();

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.SelectCommand = new OleDbCommand("Select * from Feedback ", con);
            da.SelectCommand.Connection = con;
            con.Open();
            dt.Clear();
            da.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                html.Append("<tr>");

                html.Append("<td>");
                html.Append(i + 1);
                html.Append("</td>");

                html.Append("<td>");
                string cus_id = dt.Rows[i][1].ToString();
                html.Append(cus_id);
                html.Append("</td>");

                html.Append("<td>");
                string cus_name= dt.Rows[i][2].ToString();
                html.Append(cus_name);
                html.Append("</td>");

                html.Append("<td>");
                string On_emp = dt.Rows[i][3].ToString();
                html.Append(On_emp);
                html.Append("</td>");
                html.Append("<td>");
                
              
             


                html.Append("</tr>");
            }
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HRDASHBOARD.aspx");
        }
    }
}