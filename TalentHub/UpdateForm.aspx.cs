﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;

namespace TalentHub
{
    public partial class UpdateForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateNew_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Registration set [Email-id] = '"+NewEmail.Text+"' , Password= '"+ NewPassword.Text+"' , Mobile='"+NewMob.Text+"' where [Email-id]= '"+Email.Text+"' ";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Data Entered Successfully");
            Response.Redirect("/MainPage.aspx");

        }

        protected void DeleteUser_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " delete from Registration where [Email-id]= '" + Email.Text + "' ";

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Account Deleted Successfully");
            Response.Redirect("/Registration.aspx");

        }
    }
}