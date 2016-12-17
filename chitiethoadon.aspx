<%@ Page Title="Catalog" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top">
        <div class="row">
            <h3>Chi Tiết Hóa Đơn</h3>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="240px" Width="100%" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ms" DataSourceID="chitiet" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Width="25%" />
            <Fields>
                <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
                <asp:BoundField DataField="ms_hoa_don" HeaderText="ms_hoa_don" SortExpression="ms_hoa_don" />
                <asp:BoundField DataField="ms_san_pham" HeaderText="ms_san_pham" SortExpression="ms_san_pham" />
                <asp:BoundField DataField="so_luong" HeaderText="so_luong" SortExpression="so_luong" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Delete" ShowEditButton="true" EditText="Edit" ShowInsertButton="true" InsertText="Insert" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="chitiet" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don_chi_tiet] WHERE [ms] = @original_ms AND [ms_hoa_don] = @original_ms_hoa_don AND [ms_san_pham] = @original_ms_san_pham AND [so_luong] = @original_so_luong" InsertCommand="INSERT INTO [hoa_don_chi_tiet] ([ms], [ms_hoa_don], [ms_san_pham], [so_luong]) VALUES (@ms, @ms_hoa_don, @ms_san_pham, @so_luong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ms], [ms_hoa_don], [ms_san_pham], [so_luong] FROM [hoa_don_chi_tiet]" UpdateCommand="UPDATE [hoa_don_chi_tiet] SET [ms_hoa_don] = @ms_hoa_don, [ms_san_pham] = @ms_san_pham, [so_luong] = @so_luong WHERE [ms] = @original_ms AND [ms_hoa_don] = @original_ms_hoa_don AND [ms_san_pham] = @original_ms_san_pham AND [so_luong] = @original_so_luong">
            <DeleteParameters>
                <asp:Parameter Name="original_ms" Type="Int32" />
                <asp:Parameter Name="original_ms_hoa_don" Type="Int32" />
                <asp:Parameter Name="original_ms_san_pham" Type="Int32" />
                <asp:Parameter Name="original_so_luong" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32" />
                <asp:Parameter Name="ms_hoa_don" Type="Int32" />
                <asp:Parameter Name="ms_san_pham" Type="Int32" />
                <asp:Parameter Name="so_luong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ms_hoa_don" Type="Int32" />
                <asp:Parameter Name="ms_san_pham" Type="Int32" />
                <asp:Parameter Name="so_luong" Type="Int32" />
                <asp:Parameter Name="original_ms" Type="Int32" />
                <asp:Parameter Name="original_ms_hoa_don" Type="Int32" />
                <asp:Parameter Name="original_ms_san_pham" Type="Int32" />
                <asp:Parameter Name="original_so_luong" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
