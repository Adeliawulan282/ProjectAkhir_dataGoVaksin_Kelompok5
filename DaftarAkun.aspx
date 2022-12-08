<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DaftarAkun.aspx.cs" Inherits="dataGoVaksin.DaftarAkun" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daftar Akun</title>
    <style type="text/css">
        .auto-style1 {
            width: 31%;
            margin-top: 24px;
            margin-left: 110px;
        }
        .auto-style2 {
            width: 256px;
        }
        .auto-style4 {
            width: 256px;
            height: 45px;
        }
        .auto-style7 {
            width: 60px;
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
            <h1 style="text-align: center; font-family: 'Arial Rounded MT Bold'; color: #439A97;">SELAMAT DATANG DI GO VAKSIN</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label> <br />
                    <asp:TextBox ID="Username" runat="server" Width="251px" BackColor="Silver" ForeColor="White"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="ValidasiUsername" runat="server" ErrorMessage="Username Anda Kosong" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="250px" BackColor="Silver" ForeColor="White" ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password" ErrorMessage="Isi Password Anda" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Konfirmasi Password"></asp:Label><br />
                    <asp:TextBox ID="KonfirPassword" runat="server" TextMode="Password" Width="250px" BackColor="Silver"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="KonfirPassword" ErrorMessage="Password Tidak Sesuai" ForeColor="Red"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox ID="Email" runat="server" Width="250px" BackColor="Silver"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Email Anda Kosong" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Pastikan Email Anda Sesuai" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button_SignIn" />
                    <input id="Reset1" type="reset" value="reset" class="auto-style7" /></td>
            </tr>
        </table>
       </center>
    </div>
    </form>
</body>
</html>
