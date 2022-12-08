<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Petugas.aspx.cs" Inherits="dataGoVaksin.Petugas" %>

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
    <form id="form1" runat="server">
        <div>

            <center>
                <h1 style="color: #439A97; font-family: 'Arial Rounded MT Bold'; text-align: center;" class="auto-style1">Data Petugas</h1>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="271px" Width="680px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
            </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBVaksinConnect %>" DeleteCommand="DELETE FROM [Petugas] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Petugas] ([Username], [Password], [Email]) VALUES (@Username, @Password, @Email)" SelectCommand="SELECT * FROM [Petugas]" UpdateCommand="UPDATE [Petugas] SET [Username] = @Username, [Password] = @Password, [Email] = @Email WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kembali" />
        </p>
    </form>
</body>
</html>
