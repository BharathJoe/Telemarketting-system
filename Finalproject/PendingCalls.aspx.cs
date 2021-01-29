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

namespace Calls
{
    public partial class PendingCalls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            StringBuilder html = new StringBuilder();

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.SelectCommand = new OleDbCommand("Select * from AllCalls where status = 'pending'", con);
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
                string firstname = dt.Rows[i][1].ToString();
                html.Append(firstname);
                html.Append("</td>");

                html.Append("<td>");
                string lastname = dt.Rows[i][2].ToString();
                html.Append(lastname);
                html.Append("</td>");

                html.Append("<td>");
                string company = dt.Rows[i][3].ToString();
                html.Append(company);
                html.Append("</td>");

                html.Append("<td>");
                string phone = dt.Rows[i][4].ToString();
                html.Append(phone);
                html.Append("</td>");

                html.Append("<td>");
                string mail = dt.Rows[i][5].ToString();
                html.Append(mail);
                html.Append("</td>");
                

                html.Append("</tr>");
            }
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CallDetails.aspx");
        }
    }
}