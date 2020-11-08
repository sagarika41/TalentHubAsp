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
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UserLogin_Click(object sender, EventArgs e)
        {
            if (UserRadio.Checked)
            {
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                string username = userTb.Text;
                string password = userPass.Text;
                bool flag = false;
                for (int i = 0; i <= dv.Table.Rows.Count - 1; i++)
                {
                    if (dv.Table.Rows[i]["Email-id"].ToString() == username &&
                        dv.Table.Rows[i]["Password"].ToString() == password)
                    {
                        flag = true;
                        break;
                    }
                }

                if (flag == false)
                {
                    Response.Write("Login Failed!!! ,Enter valid credentials");
                }
                else
                {

                    Response.Write("Login Success");
                    Response.Redirect("/MainPage.aspx");
                }
            }
            else if (AdminRadio.Checked)
            {
                if (userTb.Text == "adminth@gmail.com" && userPass.Text == "admin123th")
                {
                    Response.Write("Admin Login Success");
                }
                else
                {
                    Response.Write("Invalid credentials");
                }
            }
            else
            {
                Response.Write("Please select User or Admin option");
            }

        }

        
    }
}

