using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RejestracjaWalidacja
{
    public partial class WyszukiwanieTyt : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = String.Format("WynikiWyszukiwania.aspx?Tytul={0}", this.TextBox1.Text);
            this.Response.Redirect(url);
        }
    }
}