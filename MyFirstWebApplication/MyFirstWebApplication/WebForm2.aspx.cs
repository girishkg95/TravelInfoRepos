using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ListBox1.Items.Add("Grapes");
                ListBox1.Items.Add("Orange");
                ListBox1.Items.Add("Watermelon");
                ListBox1.Items.Add("Pineapple");
                ListBox1.Items.Add("Apple milk shake");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Fruits selected: ";
            for(int i=0;i<ListBox1.Items.Count;i++)
            {
                if (ListBox1.Items[i].Selected)
                    lblMessage.Text += ListBox1.Items[i].Value;
            }
        }
    }
}