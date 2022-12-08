using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace dataGoVaksin
{
    public partial class DaftarAkun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_SignIn(object sender, EventArgs e)
        {
            SqlConnection VaksinConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBVaksinConnect"].ConnectionString);
            VaksinConnect.Open(); //Buka database pake variabel yg dibuat diatas 
            string cekData = "SELECT COUNT(*) FROM [Petugas] WHERE Username ='" + Username.Text + "'"; //Cek data ada di database ada atau tidak, terus ditambah dari yg dibuat atau diinputkan
            SqlCommand data = new SqlCommand(cekData, VaksinConnect);//Membuat objek baru, parameter cek data dan koneksi stringnya
            int jmlPetugas = Convert.ToInt32(data.ExecuteScalar().ToString());//Mengambil hasil count, misalkan nambah jadinya berjumlah satu
            VaksinConnect.Close(); //Tutup
            //Kondisi jika username ada atau tidak
            if (jmlPetugas != 0)
            {
                Response.Write("Username sudah digunakan"); //kalau jumlah petugase ga sama dengan 0
            }
            else
            {
                VaksinConnect.Open(); //bukan lagi buat nambahin data ke database
                string insert = "INSERT INTO [Petugas]  (Username,Password,Email) VALUES (@Username,@Password,@Email)";
                SqlCommand insertData = new SqlCommand(insert, VaksinConnect);//Membuat objek baru
                insertData.Parameters.AddWithValue("@Username", Username.Text);
                insertData.Parameters.AddWithValue("@Password", Password.Text);
                insertData.Parameters.AddWithValue("@Email", Email.Text);
                insertData.ExecuteNonQuery();
                VaksinConnect.Close();
                //Session
                Response.Redirect("LoginPegawai.aspx");
            }

        }
    }
}