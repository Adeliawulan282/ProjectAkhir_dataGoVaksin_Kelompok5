using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dataGoVaksin
{
    public partial class DataVaksinasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["TambahDataVaksinasi"] = null;
            Response.Redirect("TambahDataVaksinasi.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["MenuUtama"] = null;
            Response.Redirect("MenuUtama.aspx");
        }
    }
}