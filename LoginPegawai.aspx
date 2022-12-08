<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPegawai.aspx.cs" Inherits="dataGoVaksin.LoginPegawai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
            height: 291px;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 471px;
            height: 77px;
        }
        .auto-style3 {
            width: 471px;
            height: 55px;
        }
        .auto-style5 {
            height: 72px;
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
                 <h1 style="font-family: 'Arial Rounded MT Bold'; text-align: center; color: #439A97; text-align: center" class="auto-style5">Silahkan Melakukan Login Akun Anda</h1>
                <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br />
                <asp:TextBox ID="Username" runat="server" Width="250px"></asp:TextBox>
                <br />
                 <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Username Harus Diisi" ForeColor="Red" ControlToValidate="Username"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Password Harus Diisi" ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button_Login" runat="server" Text="Log In" OnClick="Button_Login_Click" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DaftarAkun.aspx">Tekan, Untuk Daftar</asp:HyperLink>
            </td>
        </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>
