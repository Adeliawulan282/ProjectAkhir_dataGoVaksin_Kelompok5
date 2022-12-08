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
    public partial class TambahDataVaksinasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection VaksinConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBVaksinConnect"].ConnectionString);
            VaksinConnect.Open(); //Buka database pake variabel yg dibuat diatas 
            string cekData = "SELECT COUNT(*) FROM [dataPasien] WHERE IdPasien ='" + IdPasien.Text + "'"; //Cek data ada di database ada atau tidak, terus ditambah dari yg dibuat atau diinputkan
            SqlCommand data = new SqlCommand(cekData, VaksinConnect);//Membuat objek baru, parameter cek data dan koneksi stringnya
            int jmlPasien = Convert.ToInt32(data.ExecuteScalar().ToString());//Mengambil hasil count, misalkan nambah jadinya berjumlah satu
            VaksinConnect.Close(); //Tutup
            //Kondisi jika username ada atau tidak
            if (jmlPasien == 0)
            {
                Response.Write("Nama Pasien sudah terdaftar"); //kalau jumlah petugase ga sama dengan 0
            }
            else
            {
                VaksinConnect.Open(); //bukan lagi buat nambahin data ke database
                string insert = "INSERT INTO [Vaksinasi]  (IdPasien,NamaPasien,JenisVaksin,Dosis,LokasiMenerima,NamaDokter) VALUES (@IdPasien,@NamaPasien,@JenisVaksin,@Dosis,@LokasiMenerima,@NamaDokter)";
                SqlCommand insertData = new SqlCommand(insert, VaksinConnect);//Membuat objek baru
                insertData.Parameters.AddWithValue("@IdPasien", IdPasien.Text);
                insertData.Parameters.AddWithValue("@NamaPasien", NamaPasien.Text);
                insertData.Parameters.AddWithValue("@JenisVaksin", JenisVaksin.Text);
                insertData.Parameters.AddWithValue("@Dosis", Dosis.Text);
                insertData.Parameters.AddWithValue("@LokasiMenerima", LokasiMenerima.Text);
                insertData.Parameters.AddWithValue("@NamaDokter", NamaDokter.Text);
                insertData.ExecuteNonQuery();
                VaksinConnect.Close();
                //Session
                Response.Redirect("DataVaksinasi.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["MenuUtama"] = null;
            Response.Redirect("MenuUtama.aspx");
        }
    }
}