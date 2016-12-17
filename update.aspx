<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="200px" Width="100%" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ms" DataSourceID="update" ForeColor="#333333" GridLines="None" style="margin-right: 20px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Width="25%" />
                <Fields>
                    <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
                    <asp:BoundField DataField="ms_chuyenmuc_sp" HeaderText="ms_chuyenmuc_sp" SortExpression="ms_chuyenmuc_sp" />
                    <asp:BoundField DataField="sku" HeaderText="sku" SortExpression="sku" />
                    <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                    <asp:BoundField DataField="gia" HeaderText="gia" SortExpression="gia" />
                    <asp:BoundField DataField="mo_ta" HeaderText="mo_ta" SortExpression="mo_ta" />
                    <asp:BoundField DataField="anh" HeaderText="anh" SortExpression="anh" />
                    <asp:BoundField DataField="don_vi" HeaderText="don_vi" SortExpression="don_vi" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Delete" ShowEditButton="true" EditText="Edit" ShowInsertButton="true" InsertText="Insert" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="update" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @original_ms AND [ms_chuyenmuc_sp] = @original_ms_chuyenmuc_sp AND [sku] = @original_sku AND [ten] = @original_ten AND [gia] = @original_gia AND [mo_ta] = @original_mo_ta AND [anh] = @original_anh AND [don_vi] = @original_don_vi" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @original_ms AND [ms_chuyenmuc_sp] = @original_ms_chuyenmuc_sp AND [sku] = @original_sku AND [ten] = @original_ten AND [gia] = @original_gia AND [mo_ta] = @original_mo_ta AND [anh] = @original_anh AND [don_vi] = @original_don_vi">
                <DeleteParameters>
                    <asp:Parameter Name="original_ms" Type="Int32" />
                    <asp:Parameter Name="original_ms_chuyenmuc_sp" Type="Int32" />
                    <asp:Parameter Name="original_sku" Type="String" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_gia" Type="Decimal" />
                    <asp:Parameter Name="original_mo_ta" Type="String" />
                    <asp:Parameter Name="original_anh" Type="String" />
                    <asp:Parameter Name="original_don_vi" Type="String" />
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
                    <asp:Parameter Name="original_ms" Type="Int32" />
                    <asp:Parameter Name="original_ms_chuyenmuc_sp" Type="Int32" />
                    <asp:Parameter Name="original_sku" Type="String" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_gia" Type="Decimal" />
                    <asp:Parameter Name="original_mo_ta" Type="String" />
                    <asp:Parameter Name="original_anh" Type="String" />
                    <asp:Parameter Name="original_don_vi" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </div>
</asp:Content>
