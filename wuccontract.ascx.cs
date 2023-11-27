using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wuccontract : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.contracts.ToList();
        GridView1.DataBind();

    }
    DatabaseEntities1 db = new DatabaseEntities1();
    public void clear()
    {
      txtcontract_number.Text = "";
        txtdetails.Text = "";
        txtday.Text = "";
        txtmonth.Text = "";
        txtyear.Text = "";
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        contract c = new contract()
        {
            contract_number = Convert.ToInt32(txtcontract_number.Text),
            details = txtdetails.Text,
            day = txtday.Text,
            month = txtmonth.Text,
            year = txtyear.Text,
            customer_code = Convert.ToInt32(ddlcustomercode.Text),
            emp_id = Convert.ToInt32(ddlemployeeid.Text),
            pay_me_number = Convert.ToInt32(ddlpaymentnumber.Text)
        };


        db.contracts.Add(c);
        db.SaveChanges();
        lblmsg.Text = "contract added";
        GridView1.DataSource = db.contracts.ToList();
        GridView1.DataBind();
        clear();

        }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcontract_number.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtdetails.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtday.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtmonth.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        txtyear.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var update = db.contracts.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        update.details = txtdetails.Text;
        update.day = txtday.Text;
        update.month = txtmonth.Text;
        update.year = txtyear.Text;
        update.customer_code = Convert.ToInt32(ddlcustomercode.Text);
        update.emp_id = Convert.ToInt32(ddlemployeeid.Text);
        update.pay_me_number = Convert.ToInt32(ddlpaymentnumber.Text);
        db.SaveChanges();
        lblmsg.Text = "Employee Updated";
        GridView1.DataSource = db.employees.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var Delete = db.contracts.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.contracts.Remove(Delete);
        db.SaveChanges();
        lblmsg.Text = "Contract Deleted";
        GridView1.DataSource = db.contracts.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView1.DataSource = db.contracts.Select(b => new { b.contract_number, b.details, b.day, b.month, b.year, b.customer_code, b.emp_id, b.pay_me_number }).Where(x => x.details.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }
}