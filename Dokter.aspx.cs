using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dataGoVaksin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Tambahdokter"] = null;
            Response.Redirect("TambahDokter.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["BatalTambahdokter"] = null;
            Response.Redirect("MenuUtama.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}