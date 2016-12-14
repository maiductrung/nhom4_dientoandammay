<%@ Page Language="VB" AutoEventWireup="false" CodeFile="test.aspx.vb" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="700px" AutoGenerateRows="False" DataKeyNames="ms" DataSourceID="SqlDataSource1" class="table">
        <Fields>
            <asp:BoundField DataField="ms" HeaderText="Mã số SP:" ReadOnly="True" SortExpression="ms"/>
            <asp:BoundField DataField="ms_chuyenmuc_sp" HeaderText="Mã số chuyên mục:" SortExpression="ms_chuyenmuc_sp" />
            <asp:BoundField DataField="sku" HeaderText="Mã SP:" SortExpression="sku" />
            <asp:BoundField DataField="ten" HeaderText="Tên SP:" SortExpression="ten" />
            <asp:BoundField DataField="gia" HeaderText="Giá SP:" SortExpression="gia" />
            <asp:BoundField DataField="mo_ta" HeaderText="Mô tả:" SortExpression="mo_ta" />
            <asp:BoundField DataField="anh" HeaderText="Ảnh:" SortExpression="anh" />
            <asp:BoundField DataField="don_vi" HeaderText="Đơn vị:" SortExpression="don_vi" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
            <asp:Parameter Name="sku" Type="String" />
            <asp:Parameter Name="ten" Type="String" />
            <asp:Parameter Name="gia" Type="Decimal" />
            <asp:Parameter Name="mo_ta" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="don_vi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
            <asp:Parameter Name="sku" Type="String" />
            <asp:Parameter Name="ten" Type="String" />
            <asp:Parameter Name="gia" Type="Decimal" />
            <asp:Parameter Name="mo_ta" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="don_vi" Type="String" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
