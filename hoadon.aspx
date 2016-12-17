<%@ Page Title="Hóa Đơn" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top">
        <div class="row">
            <h3>Hóa Đơn</h3>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="100%" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ms" DataSourceID="hoadon" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Width="25%" />
            <Fields>
                <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
                <asp:BoundField DataField="trang_thai_hd" HeaderText="trang_thai_hd" SortExpression="trang_thai_hd" />
                <asp:BoundField DataField="ms_khach_hang" HeaderText="ms_khach_hang" SortExpression="ms_khach_hang" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Delete" ShowEditButton="true" EditText="Edit" ShowInsertButton="true" InsertText="Insert" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="hoadon" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [ms] = @original_ms AND [trang_thai_hd] = @original_trang_thai_hd AND [ms_khach_hang] = @original_ms_khach_hang" InsertCommand="INSERT INTO [hoa_don] ([ms], [trang_thai_hd], [ms_khach_hang]) VALUES (@ms, @trang_thai_hd, @ms_khach_hang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ms], [trang_thai_hd], [ms_khach_hang] FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [trang_thai_hd] = @trang_thai_hd, [ms_khach_hang] = @ms_khach_hang WHERE [ms] = @original_ms AND [trang_thai_hd] = @original_trang_thai_hd AND [ms_khach_hang] = @original_ms_khach_hang">
            <DeleteParameters>
                <asp:Parameter Name="original_ms" Type="Int32" />
                <asp:Parameter Name="original_trang_thai_hd" Type="String" />
                <asp:Parameter Name="original_ms_khach_hang" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32" />
                <asp:Parameter Name="trang_thai_hd" Type="String" />
                <asp:Parameter Name="ms_khach_hang" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="trang_thai_hd" Type="String" />
                <asp:Parameter Name="ms_khach_hang" Type="Int32" />
                <asp:Parameter Name="original_ms" Type="Int32" />
                <asp:Parameter Name="original_trang_thai_hd" Type="String" />
                <asp:Parameter Name="original_ms_khach_hang" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
