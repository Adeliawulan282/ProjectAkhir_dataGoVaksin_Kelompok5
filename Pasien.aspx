<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pasien.aspx.cs" Inherits="dataGoVaksin.Pasien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
        .auto-style2 {
            height: 42px;
        }
        body{
            background-image: url(./background.jpg);
            background-size:cover;    
        }
    </style>
</head>
<body>
    <div>
        <form id="form1" runat="server">
        <h1 style="color: #439A97; font-family: 'Arial Rounded MT Bold'; text-align: center;" class="auto-style1">Data Pasien</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="IdPasien" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="327px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="618px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="IdPasien" HeaderText="IdPasien" InsertVisible="False" ReadOnly="True" SortExpression="IdPasien" />
                    <asp:BoundField DataField="Nama" HeaderText="Nama" SortExpression="Nama" />
                    <asp:BoundField DataField="NIK" HeaderText="NIK" SortExpression="NIK" />
                    <asp:BoundField DataField="Alamat" HeaderText="Alamat" SortExpression="Alamat" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBVaksinConnect %>" DeleteCommand="DELETE FROM [dataPasien] WHERE [IdPasien] = @IdPasien" InsertCommand="INSERT INTO [dataPasien] ([Nama], [NIK], [Alamat]) VALUES (@Nama, @NIK, @Alamat)" SelectCommand="SELECT * FROM [dataPasien]" UpdateCommand="UPDATE [dataPasien] SET [Nama] = @Nama, [NIK] = @NIK, [Alamat] = @Alamat WHERE [IdPasien] = @IdPasien">
            <DeleteParameters>
                <asp:Parameter Name="IdPasien" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="NIK" Type="String" />
                <asp:Parameter Name="Alamat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nama" Type="String" />
                <asp:Parameter Name="NIK" Type="String" />
                <asp:Parameter Name="Alamat" Type="String" />
                <asp:Parameter Name="IdPasien" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <center class="auto-style2">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kembali" BackColor="#99CCFF" Width="110px" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tambah" BackColor="#99CCFF" Width="111px"/>
            <span class="auto-style2">&nbsp;</span>
        </center>
    </form>
    </div>
</body>
</html>
