<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataVaksinasi.aspx.cs" Inherits="dataGoVaksin.DataVaksinasi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
        .auto-style2 {
            height: 460px;
        }
        .auto-style3 {
            height: 460px;
            margin-top: 10px;
        }
        body{
            background-image: url(./background.jpg);
            background-size:cover;    
        }
    </style>
</head>
<body style="margin-top: 50px">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <h1 class="auto-style1" style="text-align: center; font-family: 'Arial Rounded MT Bold'; color: #439A97;"> Pendataan Vaksinasi </h1>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="IdVaksinasi" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="327px" Width="618px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="IdVaksinasi" HeaderText="IdVaksinasi" InsertVisible="False" ReadOnly="True" SortExpression="IdVaksinasi" />
                    <asp:BoundField DataField="IdPasien" HeaderText="IdPasien" SortExpression="IdPasien" />
                    <asp:BoundField DataField="NamaPasien" HeaderText="NamaPasien" SortExpression="NamaPasien" />
                    <asp:BoundField DataField="JenisVaksin" HeaderText="JenisVaksin" SortExpression="JenisVaksin" />
                    <asp:BoundField DataField="Dosis" HeaderText="Dosis" SortExpression="Dosis" />
                    <asp:BoundField DataField="LokasiMenerima" HeaderText="LokasiMenerima" SortExpression="LokasiMenerima" />
                    <asp:BoundField DataField="NamaDokter" HeaderText="NamaDokter" SortExpression="NamaDokter" />
                </Columns>
                <EditRowStyle BackColor="#FFCCFF" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBVaksinConnect %>" DeleteCommand="DELETE FROM [Vaksinasi] WHERE [IdVaksinasi] = @IdVaksinasi" InsertCommand="INSERT INTO [Vaksinasi] ([IdPasien], [NamaPasien], [JenisVaksin], [Dosis], [LokasiMenerima], [NamaDokter]) VALUES (@IdPasien, @NamaPasien, @JenisVaksin, @Dosis, @LokasiMenerima, @NamaDokter)" SelectCommand="SELECT * FROM [Vaksinasi]" UpdateCommand="UPDATE [Vaksinasi] SET [IdPasien] = @IdPasien, [NamaPasien] = @NamaPasien, [JenisVaksin] = @JenisVaksin, [Dosis] = @Dosis, [LokasiMenerima] = @LokasiMenerima, [NamaDokter] = @NamaDokter WHERE [IdVaksinasi] = @IdVaksinasi">
            <DeleteParameters>
                <asp:Parameter Name="IdVaksinasi" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdPasien" Type="Int32" />
                <asp:Parameter Name="NamaPasien" Type="String" />
                <asp:Parameter Name="JenisVaksin" Type="String" />
                <asp:Parameter Name="Dosis" Type="Int32" />
                <asp:Parameter Name="LokasiMenerima" Type="String" />
                <asp:Parameter Name="NamaDokter" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdPasien" Type="Int32" />
                <asp:Parameter Name="NamaPasien" Type="String" />
                <asp:Parameter Name="JenisVaksin" Type="String" />
                <asp:Parameter Name="Dosis" Type="Int32" />
                <asp:Parameter Name="LokasiMenerima" Type="String" />
                <asp:Parameter Name="NamaDokter" Type="String" />
                <asp:Parameter Name="IdVaksinasi" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <center>
            <asp:Button ID="Button4" runat="server" OnClick="Button1_Click" Text="Tambah" BackColor="#99CCFF" Width="111px"/>
            <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Kembali" BackColor="#99CCFF" Width="110px" />
            <span class="auto-style2">&nbsp;</span>
        </center>
        </div>
    </form>
</body>
</html>
