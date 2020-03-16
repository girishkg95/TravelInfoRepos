using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyFirstWebApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string qryString, conString;
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (sqlCon = new SqlConnection(conString))
            {
                qryString = "Select * from Customers Where Country = '" + DropDownList1.Text + "'";
                sqlCmd = new SqlCommand(qryString, sqlCon);
                ds = new DataSet();
                da = new SqlDataAdapter(sqlCmd);
                da.Fill(ds, "CustomersInfo");
                GridView1.DataSource = ds;
                GridView1.DataMember = "CustomersInfo";
                GridView1.DataBind();
            }          
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            conString = ConfigurationManager.ConnectionStrings["NorthwindConnection"].ConnectionString;
            if (!Page.IsPostBack)
            {
                using (sqlCon = new SqlConnection(conString))
                {
                    qryString = "Select distinct Country from Customers";
                    sqlCmd = new SqlCommand(qryString, sqlCon);
                    sqlCon.Open();
                    dr = sqlCmd.ExecuteReader();
                    DropDownList1.DataSource = dr;
                    DropDownList1.DataTextField = "Country";
                    DropDownList1.DataBind();
                    dr.Close();
                    sqlCon.Close();
                }
            }
        }
    }
}