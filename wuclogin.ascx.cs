using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wuclogin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        employee emp = new employee();
        DatabaseEntities1 db = new DatabaseEntities1();
        var select = from st in db.employees where st.username == txtusername.Text && st.password == txtpassword.Text select st;
        if (select.Any())
        {
            HttpCookie c = new HttpCookie("login");
            c.Values.Add("User", txtusername.Text);
            Response.Cookies.Add(c);
            if (ch.Checked)
            {
                c.Expires = DateTime.Now.AddYears(2);
                Response.Cookies.Add(c);
                if (txtusername.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/home.aspx");
                }

            }
            else
            {
                if (txtusername.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/home.aspx");
                }

            }


        }
    }
}