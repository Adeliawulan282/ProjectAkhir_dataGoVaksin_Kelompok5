<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TambahDokter.aspx.cs" Inherits="dataGoVaksin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        body{
            background-image: url(./background.jpg);
            background-size:cover;    
        }
        .auto-style1 {
            width: 279px;
            height: 84px;
        }
        .auto-style2 {
            width: 371px;
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                 <h1 style="color: #439A97; font-family: 'Arial Rounded MT Bold'; text-align: center;" class="auto-style1">Tambah Data Dokter</h1>
                 <table class="auto-style2">
                     <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Nama"></asp:Label> <br />
                        <asp:TextBox ID="Nama" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="NIP"></asp:Label> <br />
                        <asp:TextBox ID="NIP" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Spesialis"></asp:Label> <br />
                        <asp:TextBox ID="Spesialis" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tambah Data" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kembali" />
                    </td>
                </tr>
                 </table>
            </center>
        </div>
    </form>
</body>
</html>
