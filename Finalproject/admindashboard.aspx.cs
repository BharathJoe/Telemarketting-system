﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace callcentermanagement
{
    public partial class admindashboard : System.Web.UI.Page
    {

        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataSet ds = new DataSet();

        OleDbConnection mon = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
        OleDbDataAdapter ma = new OleDbDataAdapter();
        DataSet ms = new DataSet();

        OleDbConnection bon = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
        OleDbDataAdapter ba = new OleDbDataAdapter();
        DataSet bs = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {


           // OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = G:/NET Project/Telemarketing/Database/Basic_Details.mdb");
          //  OleDbDataAdapter da = new OleDbDataAdapter();
          //  DataSet ds = new DataSet();
            da.UpdateCommand = new OleDbCommand("Update Load set username = 'admin' ", con);


            da.UpdateCommand.Connection = con;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();


            da.SelectCommand = new OleDbCommand("select * from HRDETAILS", con);
            ds.Clear();
            da.Fill(ds);
            HRLABEL.Text = (ds.Tables[0].Rows.Count.ToString ());


            ma.SelectCommand = new OleDbCommand("select * from Emp_Details", mon);
            ms.Clear();
            ma.Fill(ms);
            EMPLABEL.Text = (ms.Tables[0].Rows.Count.ToString());

            ba.SelectCommand = new OleDbCommand("select * from AllCalls where status='Completed'", bon);
            bs.Clear();
            ba.Fill(bs);
            CALL1.Text = (bs.Tables[0].Rows.Count.ToString());


            ba.SelectCommand = new OleDbCommand("select * from AllCalls where status='Pending'", bon);
            bs.Clear();
            ba.Fill(bs);
            CALL2.Text = (bs.Tables[0].Rows.Count.ToString());


            ba.SelectCommand = new OleDbCommand("select * from AllCalls where status='Transfer'", bon);
            bs.Clear();
            ba.Fill(bs);
            CALL3.Text = (bs.Tables[0].Rows.Count.ToString());


            ba.SelectCommand = new OleDbCommand("select * from AllCalls where status='Callback'", bon);
            bs.Clear();
            ba.Fill(bs);
            CALL4.Text = (bs.Tables[0].Rows.Count.ToString());
        }

        protected void BT_LOGOUT_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source = E:/NET Project/Telemarketing/Database/Basic_Details.mdb");
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            da.UpdateCommand = new OleDbCommand("Update Load set username = 'none' ", con);


            da.UpdateCommand.Connection = con;

            con.Open();
            da.UpdateCommand.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Main_Login.aspx");
        }
    }
}