using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RejestracjaWalidacja
{
    public partial class Ankieta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.CheckBox1.Checked || this.CheckBox2.Checked || this.CheckBox3.Checked)
            {
                this.LabelPodkategorie.Visible = true;
            }
            else
            {
                this.LabelPodkategorie.Visible = false;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (this.CheckBox1.Checked)
            {
                this.CheckBoxListASP.Visible = true;
            }
            else
            {
                this.CheckBoxListASP.Visible = false;
                foreach (ListItem item in CheckBoxListASP.Items)
                {
                    item.Selected = false;
                }
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (this.CheckBox2.Checked)
            {
                this.CheckBoxListSQL.Visible = true;
            }
            else
            {
                this.CheckBoxListSQL.Visible = false;
                foreach (ListItem item in CheckBoxListSQL.Items)
                {
                    item.Selected = false;
                }
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (this.CheckBox3.Checked)
            {
                this.CheckBoxListJP.Visible = true;
            }
            else
            {
                this.CheckBoxListJP.Visible = false;
                foreach (ListItem item in CheckBoxListJP.Items)
                {
                    item.Selected = false;
                }
            }
        }

        protected void ButtonPodsumowanie_Click(object sender, EventArgs e)
        {
            String osoba = this.TextBoxImie.Text + " " + this.TextBoxNazwisko.Text;
            String wynikASP = "- w kategorii ASP.NET: ";
            String wynikSQL = "- w kategorii SQL: ";
            String wynikJP = "- w kategorii Języki Programowania: ";

            foreach (ListItem item in CheckBoxListASP.Items)
            {
                if (item.Selected)
                {
                    wynikASP += item.Value + ", ";
                }
            }
            foreach (ListItem item in CheckBoxListSQL.Items)
            {
                if (item.Selected)
                {
                    wynikSQL += item.Value + ", ";
                }
            }
            foreach (ListItem item in CheckBoxListJP.Items)
            {
                if (item.Selected)
                {
                    wynikJP += item.Value + ", ";
                }
            }
            //this.Label1.Text = "Osoba: " + osoba + ";";
            // this.Label1.Text += " wybrała: " + wynik;
            Response.Redirect("WynikAnkiety.aspx?Osoba=" + osoba + "&WynikASP=" + wynikASP + "&WynikSQL=" + wynikSQL + "&WynikJP=" + wynikJP);
        }
    }
}