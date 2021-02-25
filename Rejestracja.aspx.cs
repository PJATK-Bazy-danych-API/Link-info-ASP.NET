using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RejestracjaWalidacja
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.MultiView1.SetActiveView(View1);
            }

            this.Label1.Text = "Aktualny czas: " + DateTime.Now.ToLongTimeString();
            this.Label2.Text = "Aktualny czas: " + DateTime.Now.ToLongTimeString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.DropDownList1.SelectedValue.ToString() == "PJATK")
            {
                this.MultiView1.SetActiveView(View2);
            }

            if (this.DropDownList1.SelectedValue.ToString() == "Gosc")
            {
                this.MultiView1.SetActiveView(View3);
            }
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {
            if (this.MultiView1.ActiveViewIndex == 1)
            {
                this.TextBox3.Text = this.TextBox1.Text;
                this.TextBox4.Text = this.TextBox2.Text;
            }

            if (this.MultiView1.ActiveViewIndex == 2)
            {
                this.TextBox10.Text = this.TextBox1.Text;
                this.TextBox11.Text = this.TextBox2.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String Imie2 = this.TextBox3.Text;
            Response.Redirect("Wyszukiwanie.aspx?Imie=" + Imie2);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String Imie3 = this.TextBox10.Text;
            Response.Redirect("Wyszukiwanie.aspx?Imie=" + Imie3);
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (this.CheckBox1.Checked)
            {
                this.TextBox13.Visible = true;
            }
            else
            {
                this.TextBox13.Visible = false;
            }

            if (this.CheckBox1.Checked)
            {
                this.TextBox14.Visible = true;
            }
            else
            {
                this.TextBox14.Visible = false;
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.TextBox10.Text = "";
            this.TextBox11.Text = "";
            this.TextBox12.Text = "";
            this.TextBox13.Text = "";
            this.TextBox14.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}