<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuUtama.aspx.cs" Inherits="dataGoVaksin.MenuUtama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 618px;
            table-layout: inherit;
            height: 330px;
            margin-bottom: 0px;
        }
        .auto-style5 {
            width: 10px;
        }
        .auto-style8 {
            height: 41px;
            margin-top: 0px;
        }
        .auto-style13 {
            width: 215px;
            height: 145px;
        }
        .auto-style14 {
            width: 112px;
            height: 145px;
        }
        .auto-style15 {
            width: 193px;
            height: 145px;
        }
        .auto-style16 {
            width: 273px;
            height: 145px;
        }
        .auto-style17 {
            width: 215px;
            height: 135px;
        }
        .auto-style18 {
            width: 112px;
            height: 135px;
        }
        .auto-style19 {
            width: 193px;
            height: 135px;
        }
        .auto-style20 {
            width: 273px;
            height: 135px;
        }
        .auto-style21 {
            height: 478px;
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
           
           <center class="auto-style21">
                <h1 style="font-family: 'Arial Rounded MT Bold'; text-align: center; color: #439A97; text-align: center" class="auto-style8">Selamat Datang di GoVaksin</h1>
            
                <table class="auto-style1" border="0" style="border-color: #CBEDD5; border-spacing: inherit; border-collapse: inherit; empty-cells: hide; background-color: #008080;">
        <tr style="background-color: #CBEDD5">
            <td class="auto-style17" style="background-color: #CBEDD5; vertical-align: middle; white-space: normal;">
                <asp:Image ID="Image1" runat="server" Height="133px" ImageUrl="~/doctor.png" Width="185px" BorderColor="#CBEDD5" BackColor="#CBEDD5" BorderWidth="0px" />
            </td>
            <td style="background-color: #CBEDD5;" class="auto-style18">
                <asp:Button ID="Button1" runat="server" Text="Data Dokter" BackColor="#99CCFF" BorderColor="White" ForeColor="Black" Height="32px" OnClick="Button1_Click" Width="112px" />
            </td>
            <td style="background-color: #CBEDD5;" class="auto-style19">
                <asp:Image ID="Image2" runat="server" CssClass="auto-style5" Height="130px" ImageUrl="~/hospital.png" Width="184px" BackColor="#CBEDD5" />
            </td>
            <td style="background-color: #CBEDD5;" class="auto-style20">
                <asp:Button ID="Button2" runat="server" Text="Data Pasien" BackColor="#99CCFF" BorderColor="White" Height="35px" OnClick="Button2_Click" Width="124px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="background-color: #CBEDD5; vertical-align: middle; white-space: normal;">
                <asp:Image ID="Image4" runat="server" Height="119px" ImageUrl="~/medical-tools.png" Width="184px" BackColor="#CBEDD5" />
            </td>
            <td style="background-color: #CBEDD5;" class="auto-style14">
                <asp:Button ID="Button3" runat="server" Text="Data Vaksin" BackColor="#99CCFF" BorderColor="White" Height="31px" OnClick="Button3_Click" Width="109px" />
            </td>
            <td style="background-color: #CBEDD5;" class="auto-style15">
                <asp:Image ID="Image3" runat="server" Height="128px" ImageUrl="~/clipboard.png" Width="184px" BorderColor="#CBEDD5" />
            </td>
            <td style="background-color: #CBEDD5;" class="auto-style16">
                <asp:Button ID="Button4" runat="server" Text="Data Vaksinasi" BackColor="#99CCFF" BorderColor="White" Height="33px" OnClick="Button4_Click" Width="122px" />
            </td>
        </tr>
            </table>
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Petugas.aspx" ForeColor="#CBEDD5">Tekan, Untuk Mengelola Akun Petugas Puskesmas Sumbersari</asp:HyperLink>
           </center>
        </div>
    </form>
</body>
</html>
