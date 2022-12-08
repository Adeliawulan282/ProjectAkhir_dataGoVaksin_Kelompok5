using Microsoft.SqlServer.Server;
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
    public partial class LoginPegawai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection VaksinConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBVaksinConnect"].ConnectionString);
            VaksinConnect.Open(); //Buka database pake variabel yg dibuat diatas 
            string cekData = "SELECT COUNT(*) FROM [Petugas] WHERE Username ='" + Username.Text + "'"; //Cek data ada di database ada atau tidak, terus ditambah dari yg dibuat atau diinputkan
            SqlCommand data = new SqlCommand(cekData, VaksinConnect);//Membuat objek baru, parameter cek data dan koneksi stringnya
            int jmlPetugas = Convert.ToInt32(data.ExecuteScalar().ToString());//Mengambil hasil count, misalkan nambah jadinya berjumlah satu
            VaksinConnect.Close(); //Tutup
            //Kondisi jika username ada di database
            if (jmlPetugas == 1)
            {
                VaksinConnect.Open();
                string CekPassword = "SELECT Password FROM [Petugas] WHERE Username ='" + Username.Text + "'"; //password inputan user
                SqlCommand passquerry = new SqlCommand(CekPassword, VaksinConnect);
                string password = passquerry.ExecuteScalar().ToString(); //cek Password dari database
                VaksinConnect.Close();
                if (password == Password.Text) //Jika password sama kaya inputan
                {
                    //session
                    Response.Redirect("MenuUtama.aspx");
                }
                else
                {
                    Response.Write("Password salah");
                }
            }
            else
            {
                Response.Write("Username tidak ditemukan"); //kalau jumlah petugase ga sama dengan 0
            }
        }
    }
}