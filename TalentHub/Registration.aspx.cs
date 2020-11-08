using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace TalentHub
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Registration values(@fname,@lname,@email,@pass,@dob,@mob)";
            cmd.Parameters.AddWithValue("@fname", TextFN.Text);
            cmd.Parameters.AddWithValue("@lname", TextLN.Text);
            cmd.Parameters.AddWithValue("@email", TextEmail.Text);
            cmd.Parameters.AddWithValue("@pass", TextPass.Text);
            cmd.Parameters.AddWithValue("@dob", TextDOB.Text);
            cmd.Parameters.AddWithValue("@mob", TextMobile.Text);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Data Entered Successfully");
            Response.Redirect("LoginForm.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/LoginForm.aspx");
        }
    }
}