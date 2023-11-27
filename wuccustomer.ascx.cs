using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wuccustomer : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.customers.ToList();
        GridView1.DataBind();

    }
    DatabaseEntities1 db = new DatabaseEntities1();
    public void clear()
    {
        txtcustomer_code.Text = "";
        txtname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        customer cu = new customer()
        {
           customer_code = Convert.ToInt32(txtcustomer_code.Text),
           name =txtname.Text,
           address =txtaddress.Text,
           email =txtemail.Text
    };

        db.customers.Add(cu);
        db.SaveChanges();
        lblmsg.Text = "customer added";
        GridView1.DataSource = db.customers.ToList();
        GridView1.DataBind();
        clear();
        }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcustomer_code.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtaddress.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtemail.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView1.DataSource = db.customers.Select(b => new { b.customer_code, b.name, b.address, b.email }).Where(x => x.address.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }
}