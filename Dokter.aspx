<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dokter.aspx.cs" Inherits="dataGoVaksin.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 460px;
        }
        body{
            background-image: url(./background.jpg);
            background-size:cover;    
        }
        </style>

</head>
<body">
    <div>
    
     <form id="form1" runat="server" class="auto-style1">
         <h1 style="text-align: center; font-family: 'Arial Rounded MT Bold'; color: #CBEDD5;">Data Dokter</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdDokter" DataSourceID="SqlDataSource1" Height="184px" Width="614px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IdDokter" HeaderText="IdDokter" InsertVisible="False" ReadOnly="True" SortExpression="IdDokter" />
                <asp:BoundField DataField="Nama" HeaderText="Nama" SortExpression="Nama" />
                <asp:BoundField DataField="NIP" HeaderText="NIP" SortExpression="NIP" />
                <asp:BoundField DataField="Spesialis" HeaderText="Spesialis" SortExpression="Spesialis" />
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
        

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBVaksinConnect %>" DeleteCommand="DELETE FROM [dataDokter] WHERE [IdDokter] = @IdDokter" InsertCommand="INSERT INTO [dataDokter] ([Nama], [NIP], [Spesialis]) VALUES (@Nama, @NIP, @Spesialis)" SelectCommand="SELECT * FROM [dataDokter]" UpdateCommand="UPDATE [dataDokter] SET [Nama] = @Nama, [NIP] = @NIP, [Spesialis] = @Spesialis WHERE [IdDokter] = @IdDokter">
                <DeleteParameters>
                    <asp:Parameter Name="IdDokter" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nama" Type="String" />
                    <asp:Parameter Name="NIP" Type="String" />
                    <asp:Parameter Name="Spesialis" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nama" Type="String" />
                    <asp:Parameter Name="NIP" Type="String" />
                    <asp:Parameter Name="Spesialis" Type="String" />
                    <asp:Parameter Name="IdDokter" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
         <center>
             <br />
             <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Kembali" BackColor="#99CCFF" Width="110px" />
            <asp:Button ID="Button4" runat="server" OnClick="Button1_Click" Text="Tambah" BackColor="#99CCFF" Width="111px"/>
            <span class="auto-style2">&nbsp;</span>
        </center
        </form>
        </div>
   
</body>
</html>
