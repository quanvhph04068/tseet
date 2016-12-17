﻿<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top">
        <div class="row">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ms" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
                    <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                    <asp:BoundField DataField="ms_chuyenmuc_cha" HeaderText="ms_chuyenmuc_cha" SortExpression="ms_chuyenmuc_cha" />
                    <asp:BoundField DataField="mo_ta" HeaderText="mo_ta" SortExpression="mo_ta" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [chuyenmuc_sanpham] WHERE [ms] = @original_ms AND [ten] = @original_ten AND (([ms_chuyenmuc_cha] = @original_ms_chuyenmuc_cha) OR ([ms_chuyenmuc_cha] IS NULL AND @original_ms_chuyenmuc_cha IS NULL)) AND [mo_ta] = @original_mo_ta" InsertCommand="INSERT INTO [chuyenmuc_sanpham] ([ms], [ten], [ms_chuyenmuc_cha], [mo_ta]) VALUES (@ms, @ten, @ms_chuyenmuc_cha, @mo_ta)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ms], [ten], [ms_chuyenmuc_cha], [mo_ta] FROM [chuyenmuc_sanpham]" UpdateCommand="UPDATE [chuyenmuc_sanpham] SET [ten] = @ten, [ms_chuyenmuc_cha] = @ms_chuyenmuc_cha, [mo_ta] = @mo_ta WHERE [ms] = @original_ms AND [ten] = @original_ten AND (([ms_chuyenmuc_cha] = @original_ms_chuyenmuc_cha) OR ([ms_chuyenmuc_cha] IS NULL AND @original_ms_chuyenmuc_cha IS NULL)) AND [mo_ta] = @original_mo_ta">
                <DeleteParameters>
                    <asp:Parameter Name="original_ms" Type="Int32" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_ms_chuyenmuc_cha" Type="Int32" />
                    <asp:Parameter Name="original_mo_ta" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ms" Type="Int32" />
                    <asp:Parameter Name="ten" Type="String" />
                    <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
                    <asp:Parameter Name="mo_ta" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ten" Type="String" />
                    <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
                    <asp:Parameter Name="mo_ta" Type="String" />
                    <asp:Parameter Name="original_ms" Type="Int32" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_ms_chuyenmuc_cha" Type="Int32" />
                    <asp:Parameter Name="original_mo_ta" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
        </div>
    </div>
</asp:Content>