<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top">
        <div class="row">
            <div class="pull-right shop-add">
                <a class="btn btn-sm btn-danger" target="_blank" href="update.aspx"><i class="glyphicon glyphicon-plus-sign"> THÊM SỬA XÓA SẢN PHẨM</i></a>
            </div>
            <div class="col-md-12">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail khung-mua">
                                <div class="caption">
                                        <asp:Image id="Image1" runat="server"
                                        CssClass ="img-rounded"
                                        Width="100%"
                                        Height="260px"
                                        AlternateText="Image text"
                                        ImageAlign="left"
                                        ImageUrl="<%# Bind('anh')%>"
                                        />
                                <div class="space"></div>
                                <h6 class="pull-right text-primary"><b><asp:Label ID="giaLabel" runat="server" Text='<%# Bind("gia")%>' /> VNĐ</b></h6>
                                <h5><a href="#" class="text-muted"><asp:Label ID="tenLabel" runat="server" Text='<%# Bind("ten") %>' /></a></h5>
                                <div class="pull-right">
                                    <a class="btn btn-sm btn-info" target="_blank" href="update.aspx"><i class="glyphicon glyphicon-edit"></i></a>
                                    <a class="btn btn-sm btn-danger" target="_blank" href="update.aspx"><i class="glyphicon glyphicon-remove-circle"></i></a>
                                </div>
                                <p><asp:Label ID="mo_taLabel" runat="server" Text='<%# Bind("mo_ta") %>' /></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [san_pham]" OldValuesParameterFormatString="original_{0}">
                </asp:SqlDataSource>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
