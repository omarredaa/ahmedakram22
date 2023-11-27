using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wucservies : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.servies.ToList();
        GridView1.DataBind();

    }
    DatabaseEntities1 db = new DatabaseEntities1();
    public void clear()
    {
        txtserviesnumber.Text = "";
        txtserviesname.Text = "";
        txtdetalis.Text = "";
        txttype.Text = "";
        txtinsurance.Text = "";
        txtinsurancenumber.Text = "";
        txtname.Text = "";
        txtdate.Text = "";
        txtvalue.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        servy s = new servy()
        {
servies_number=Convert.ToInt32(txtserviesnumber.Text),
servies_name=txtserviesname.Text,
details=txtdetalis.Text,
price=Convert.ToDecimal(txtprice),
type=txttype.Text,
insurance=txtinsurance.Text,
insurance_number=Convert.ToInt32(txtinsurancenumber.Text),
name=txtname.Text,
date=txtdate.Text,
value=Convert.ToDecimal( txtvalue.Text)


        };

        db.servies.Add(s);
        db.SaveChanges();
        lblmsg.Text = "Servies Added";
        GridView1.DataSource = db.servies.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtserviesnumber.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtserviesname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtdetalis.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtprice.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        txttype.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        txtinsurance.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
        txtinsurancenumber.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
        txtname.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
        txtdate.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
        txtvalue.Text = GridView1.SelectedRow.Cells[10].Text.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var update = db.servies.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        update.servies_name = txtserviesname.Text;
        update.details = txtdetalis.Text;
        update.price = Convert.ToDecimal(txtprice.Text);
        update.type = txttype.Text;
        update.insurance = txtinsurance.Text;
        update.insurance_number =Convert.ToInt32( txtinsurancenumber.Text);
        update.name = txtname.Text;
        update.date = txtdate.Text;
        update.value =Convert.ToDecimal( txtvalue.Text);
        db.SaveChanges();
        lblmsg.Text = "Employee Updated";
        GridView1.DataSource = db.employees.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var Delete = db.servies.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.servies.Remove(Delete);
        db.SaveChanges();
        lblmsg.Text = "Servies Deleted";
        GridView1.DataSource = db.servies.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView1.DataSource = db.servies.Select(b => new { b.servies_number, b.servies_name, b.details, b.price, b.type, b.insurance, b.insurance_number, b.name, b.date, b.value }).Where(x => x.name.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }
}