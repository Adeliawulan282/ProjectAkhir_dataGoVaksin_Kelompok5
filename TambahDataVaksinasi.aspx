<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TambahDataVaksinasi.aspx.cs" Inherits="dataGoVaksin.TambahDataVaksinasi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        body{
            background-image: url(./background.jpg);
            background-size:cover;    
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 46%;
            height: 398px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                 <h1 style="color: #439A97; font-family: 'Arial Rounded MT Bold'; text-align: center;" class="auto-style1">Tambah Data Vaksinasi</h1>
                 <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Id Pasien"></asp:Label> <br />
                        <asp:TextBox ID="IdPasien" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Nama Pasien"></asp:Label> <br />
                        <asp:TextBox ID="NamaPasien" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Jenis Vaksin"></asp:Label> <br />
                        <asp:TextBox ID="JenisVaksin" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Dosis"></asp:Label> <br />
                        <asp:TextBox ID="Dosis" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Lokasi Menerima"></asp:Label> <br />
                        <asp:TextBox ID="LokasiMenerima" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Nama Dokter"></asp:Label> <br />
                        <asp:TextBox ID="NamaDokter" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tambah" style="height: 26px" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kembali" />
                    </td>
                </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
