using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dataGoVaksin
{
    public partial class MenuUtama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection VaksinConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBVaksinConnect"].ConnectionString);
            VaksinConnect.Open();
            string cekData = "SELECT COUNT (*) FROM [dataDokter]";
            SqlCommand query = new SqlCommand(cekData, VaksinConnect);
            Response.Redirect("Dokter.aspx");
            VaksinConnect.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection VaksinConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBVaksinConnect"].ConnectionString);
            VaksinConnect.Open();
            string cekData = "SELECT COUNT (*) FROM [dataPasien]";
            SqlCommand query = new SqlCommand(cekData, VaksinConnect);
            Response.Redirect("Pasien.aspx");
            VaksinConnect.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection VaksinConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBVaksinConnect"].ConnectionString);
            VaksinConnect.Open();
            string cekData = "SELECT COUNT (*) FROM [dataVaksinasi]";
            SqlCommand query = new SqlCommand(cekData, VaksinConnect);
            Response.Redirect("DataVaksinasi.aspx");
            VaksinConnect.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection VaksinConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBVaksinConnect"].ConnectionString);
            VaksinConnect.Open();
            string cekData = "SELECT COUNT (*) FROM [dataVaksin]";
            SqlCommand query = new SqlCommand(cekData, VaksinConnect);
            Response.Redirect("Vaksin.aspx");
            VaksinConnect.Close();
        }
    }
}