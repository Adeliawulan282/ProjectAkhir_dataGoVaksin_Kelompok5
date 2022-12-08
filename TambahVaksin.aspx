<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TambahVaksin.aspx.cs" Inherits="dataGoVaksin.TambahVaksin" %>

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
            height: 76px;
        }
        .auto-style2 {
            height: 287px;
            width: 283px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1 style="color: #439A97; font-family: 'Arial Rounded MT Bold'; text-align: center;" class="auto-style1">Tambah Data Vaksin</h1>
            <center>
                <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Jenis"></asp:Label> <br />
                        <asp:TextBox ID="Jenis" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="TglExpired"></asp:Label> <br />
                        <asp:TextBox ID="TglExpired" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Stok"></asp:Label> <br />
                        <asp:TextBox ID="Stok" runat="server" Width="235px"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tambah" />
                    </td>
                </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
