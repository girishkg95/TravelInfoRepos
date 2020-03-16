using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.Items.Add("India");
                DropDownList1.Items.Add("Australia");
                DropDownList1.Items.Add("England");
                DropDownList1.Items.Add("South Africa");
                DropDownList1.Items.Add("New Zealand");
                DropDownList1.Items.Add("SriLanka");

                chkHobbies.Items.Add("Swimming");
                chkHobbies.Items.Add("Travelling");
                chkHobbies.Items.Add("Reading");
            }

            if(Page.IsPostBack)
            {
                lblHobbies.Text = "Your hobbies are: </br>";
                for (int i=0;i<chkHobbies.Items.Count;i++)
                {
                    if(chkHobbies.Items[i].Selected)
                    lblHobbies.Text += chkHobbies.Items[i].Text + "</br>";
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write("Hello World from ASP.NET Web Application Development Platform! </br>");

            Response.Write("Welcome Mr/Miss " + txtName.Text + " from " + txtAddress.Text + " to ASP.NET Web Application Development! </br>");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCountry.Text = "You have selected: " + DropDownList1.Text;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblDate.Text = "You have selected: " + Calendar1.SelectedDate.ToLongDateString();
        }
    }
}