using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RejestracjaWalidacja
{
    public partial class WynikAnkiety : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LabelOsoba.Text = Request.QueryString["Osoba"];
            this.LabelASP.Text = Request.QueryString["WynikASP"];
            this.LabelSQL.Text = Request.QueryString["WynikSQL"];
            this.LabelJP.Text = Request.QueryString["WynikJP"];
        }
    }
}