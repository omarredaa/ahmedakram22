using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wucpaymentmethods : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.payment_methods.ToList();
        GridView1.DataBind();

    }
    DatabaseEntities1 db = new DatabaseEntities1();
    public void clear()
    {
        txtpaymentnumber.Text = "";
        txtname.Text = "";
        txtexpiredate.Text = "";
        txtcash.Text = "";
        txtvisa.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        payment_methods p = new payment_methods()
        {
            pay_me_number = Convert.ToInt32(txtpaymentnumber.Text),
            name = txtname.Text,
            expire_date = txtexpiredate.Text,
            cash = Convert.ToDecimal(txtcash.Text),
            visa = Convert.ToDecimal(txtvisa.Text)

        };
        db.payment_methods.Add(p);
        db.SaveChanges();
        lblmsg.Text = "payment_methods added";
        GridView1.DataSource = db.payment_methods.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtpaymentnumber.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtexpiredate.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtcash.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        txtvisa.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var update = db.payment_methods.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        update.name = txtname.Text;
        update.expire_date = txtexpiredate.Text;
        update.cash = Convert.ToDecimal(txtcash.Text);
        update.visa = Convert.ToDecimal(txtvisa.Text);
        db.SaveChanges();
        lblmsg.Text = "Paymentmethods Updated";
        GridView1.DataSource = db.payment_methods.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var Delete = db.payment_methods.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.payment_methods.Remove(Delete);
        db.SaveChanges();
        lblmsg.Text = "Paymentmethods Deleted";
        GridView1.DataSource = db.payment_methods.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView1.DataSource = db.payment_methods.Select(b => new { b.pay_me_number, b.name, b.expire_date, b.cash, b.visa }).Where(x => x.name.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }
}