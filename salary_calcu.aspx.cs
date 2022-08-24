using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Payroll_appicaton
{
    public partial class salary_calcu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        double sal, allow, amt;
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            sal = Double.Parse(TextBox4.Text);
            allow = sal * 30 / 100;
            amt = sal - allow;
            TextBox1.Text = allow.ToString();
            TextBox5.Text = amt.ToString();
        }
        
    }
}