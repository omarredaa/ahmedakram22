using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wucoffers : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.offers.ToList();
        GridView1.DataBind();

    }
    DatabaseEntities1 db = new DatabaseEntities1();
    public void clear()
    {
        txtoffersnumber.Text = "";
        txtname.Text = "";
        txtdetails.Text = "";
        txtdiscount.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        offer o = new offer()
        {
            offers_number = Convert.ToInt32(txtoffersnumber.Text),
            name = txtname.Text,
            details = txtdetails.Text,
            discount = txtdiscount.Text

        };
        db.offers.Add(o);
        db.SaveChanges();
        lblmsg.Text = "offers added";
        GridView1.DataSource = db.offers.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtoffersnumber.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtdetails.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtdiscount.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var update = db.offers.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        update.name = txtname.Text;
        update.details = txtdetails.Text;
        update.discount = txtdiscount.Text;
        db.SaveChanges();
        lblmsg.Text = "Offers Updated";
        GridView1.DataSource = db.employees.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var Delete = db.offers.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.offers.Remove(Delete);
        db.SaveChanges();
        lblmsg.Text = "Offers Deleted";
        GridView1.DataSource = db.offers.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
      GridView1.Visible = true;
        GridView1.DataSource = db.offers.Select(b => new { b.offers_number, b.name, b.details, b.discount}).Where(x => x.name.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }
}