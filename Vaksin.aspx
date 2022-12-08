<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vaksin.aspx.cs" Inherits="dataGoVaksin.Vaksin" %>

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
<body>
    <form id="form1" runat="server">
        
        <div class="auto-style1">
            <h1 style="text-align: center; color: #439A97; font-family: 'Arial Rounded MT Bold';"> Data Vaksin</h1>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="IdVaksin" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="327px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="618px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="IdVaksin" HeaderText="IdVaksin" InsertVisible="False" ReadOnly="True" SortExpression="IdVaksin" />
                    <asp:BoundField DataField="Jenis" HeaderText="Jenis" SortExpression="Jenis" />
                    <asp:BoundField DataField="TglExpired" HeaderText="TglExpired" SortExpression="TglExpired" />
                    <asp:BoundField DataField="Stok" HeaderText="Stok" SortExpression="Stok" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBVaksinConnect %>" DeleteCommand="DELETE FROM [dataVaksin] WHERE [IdVaksin] = @IdVaksin" InsertCommand="INSERT INTO [dataVaksin] ([Jenis], [TglExpired], [Stok]) VALUES (@Jenis, @TglExpired, @Stok)" SelectCommand="SELECT * FROM [dataVaksin]" UpdateCommand="UPDATE [dataVaksin] SET [Jenis] = @Jenis, [TglExpired] = @TglExpired, [Stok] = @Stok WHERE [IdVaksin] = @IdVaksin">
                <DeleteParameters>
                    <asp:Parameter Name="IdVaksin" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Jenis" Type="String" />
                    <asp:Parameter Name="TglExpired" Type="String" />
                    <asp:Parameter Name="Stok" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Jenis" Type="String" />
                    <asp:Parameter Name="TglExpired" Type="String" />
                    <asp:Parameter Name="Stok" Type="Int32" />
                    <asp:Parameter Name="IdVaksin" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <center>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kembali" BackColor="#99CCFF" Width="110px" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tambah" BackColor="#99CCFF" Width="111px"/>
            <span class="auto-style2">&nbsp;</span>
        </center>

        </div>
    </form>
</body>
</html>
