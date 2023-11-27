using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wucemployee : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.employees.ToList();
        GridView1.DataBind();

    }
    DatabaseEntities1 db = new DatabaseEntities1();
    public void clear()
    {
        txtempid.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtaddress.Text = "";
        txtphone.Text = "";
        txtname.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        employee E = new employee()
        {
            emp_id = Convert.ToInt32(txtempid.Text),
            username = txtempid.Text,
            password = txtpassword.Text,
            address = txtaddress.Text,
            phone = txtphone.Text,
            name = txtname.Text
        };
        db.employees.Add(E);
        db.SaveChanges();
        lblmsg.Text = "employee added";
        GridView1.DataSource = db.employees.ToList();
        GridView1.DataBind();
        clear();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       txtempid.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
       txtusername.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
       txtpassword.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
       txtaddress.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
       txtphone.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
       txtname.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
var update = db.employees.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        update.username = txtusername.Text;
        update.password = txtpassword.Text;
        update.address = txtaddress.Text;
        update.phone = txtphone.Text;
        update.name = txtname.Text;
        db.SaveChanges();
        lblmsg.Text = "Employee Updated";
        GridView1.DataSource = db.employees.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var Delete = db.employees.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.employees.Remove(Delete);
        db.SaveChanges();
        lblmsg.Text = "Employee Deleted";
        GridView1.DataSource = db.employees.ToList();
        GridView1.DataBind();
        clear();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView1.DataSource = db.employees.Select(b => new { b.emp_id, b.username, b.password, b.address,b.phone,b.name }).Where(x => x.name.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }
}