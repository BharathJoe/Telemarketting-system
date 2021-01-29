using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace Calls
{
    public partial class AssignCalls : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string firstname = firstnameTxBx.Text;
            string lastname = lastnameTxBx.Text;
            string company = companyTxBx.Text;
            string phone = phoneTxBx.Text;
            string email = mailTxBx.Text;
            string assignto = empDropdown.SelectedItem.Text;

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            da.InsertCommand = new OleDbCommand("Insert into AllCalls (firstname,lastname,company,phone,mail,assignTo) values (@firstname,@lastname,@company,@phone,@mail,@assignTo)");
            da.InsertCommand.Connection = con;
            da.InsertCommand.Parameters.Add("@firstname", OleDbType.VarChar).Value = firstname.ToString();
            da.InsertCommand.Parameters.Add("@lastname", OleDbType.VarChar).Value = lastname.ToString();
            da.InsertCommand.Parameters.Add("@company", OleDbType.VarChar).Value = company.ToString();
            da.InsertCommand.Parameters.Add("@phone", OleDbType.VarChar).Value = phone.ToString();
            da.InsertCommand.Parameters.Add("@mail", OleDbType.VarChar).Value = email.ToString();
            da.InsertCommand.Parameters.Add("@assignTo", OleDbType.VarChar).Value = assignto.ToString();
            con.Open();
            da.InsertCommand.ExecuteNonQuery();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();

            da.SelectCommand = new OleDbCommand("Select EMP_Name from EMP", con);
            da.SelectCommand.Connection = con;
            con.Open();
            ds.Clear();
            da.Fill(ds);

            empDropdown.DataSource = ds.Tables[0];
            empDropdown.DataTextField = "EMP_Name";

            empDropdown.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("HRDASHBOARD.aspx");
        }
    }
}