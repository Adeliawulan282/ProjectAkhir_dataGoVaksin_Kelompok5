<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TambahPasien.aspx.cs" Inherits="dataGoVaksin.TambahPasien" %>

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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1 style="color: #439A97; font-family: 'Arial Rounded MT Bold'; text-align: center;" class="auto-style1">Tambah Data Pasien</h1>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Nama"></asp:Label> <br />
                        <asp:TextBox ID="Nama" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="NIK"></asp:Label> <br />
                        <asp:TextBox ID="NIK" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Alamat"></asp:Label> <br />
                        <asp:TextBox ID="Alamat" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tambah" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </center>

        </div>
    </form>
</body>
</html>
