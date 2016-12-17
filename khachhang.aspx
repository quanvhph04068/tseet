<%@ Page Title="Khách Hàng" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container page-top">
        <div class="row">
            <h3>Khách Hàng</h3>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="100%" AutoGenerateRows="False" DataKeyNames="ms" DataSourceID="khachhang" AllowPaging="True" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Width="25%" />
            <Fields>
                <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
                <asp:BoundField DataField="ho_va_ten" HeaderText="ho_va_ten" SortExpression="ho_va_ten" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="dia_chi" HeaderText="dia_chi" SortExpression="dia_chi" />
                <asp:BoundField DataField="so_thich" HeaderText="so_thich" SortExpression="so_thich" />
                <asp:BoundField DataField="so_dien_thoai" HeaderText="so_dien_thoai" SortExpression="so_dien_thoai" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Delete" ShowEditButton="true" EditText="Edit" ShowInsertButton="true" InsertText="Insert" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="khachhang" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [khach_hang] WHERE [ms] = @original_ms AND [ho_va_ten] = @original_ho_va_ten AND [email] = @original_email AND [dia_chi] = @original_dia_chi AND [so_thich] = @original_so_thich AND [so_dien_thoai] = @original_so_dien_thoai" InsertCommand="INSERT INTO [khach_hang] ([ms], [ho_va_ten], [email], [dia_chi], [so_thich], [so_dien_thoai]) VALUES (@ms, @ho_va_ten, @email, @dia_chi, @so_thich, @so_dien_thoai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ms], [ho_va_ten], [email], [dia_chi], [so_thich], [so_dien_thoai] FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [ho_va_ten] = @ho_va_ten, [email] = @email, [dia_chi] = @dia_chi, [so_thich] = @so_thich, [so_dien_thoai] = @so_dien_thoai WHERE [ms] = @original_ms AND [ho_va_ten] = @original_ho_va_ten AND [email] = @original_email AND [dia_chi] = @original_dia_chi AND [so_thich] = @original_so_thich AND [so_dien_thoai] = @original_so_dien_thoai">
            <DeleteParameters>
                <asp:Parameter Name="original_ms" Type="Int32" />
                <asp:Parameter Name="original_ho_va_ten" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_dia_chi" Type="String" />
                <asp:Parameter Name="original_so_thich" Type="String" />
                <asp:Parameter Name="original_so_dien_thoai" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ms" Type="Int32" />
                <asp:Parameter Name="ho_va_ten" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="dia_chi" Type="String" />
                <asp:Parameter Name="so_thich" Type="String" />
                <asp:Parameter Name="so_dien_thoai" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ho_va_ten" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="dia_chi" Type="String" />
                <asp:Parameter Name="so_thich" Type="String" />
                <asp:Parameter Name="so_dien_thoai" Type="Int32" />
                <asp:Parameter Name="original_ms" Type="Int32" />
                <asp:Parameter Name="original_ho_va_ten" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_dia_chi" Type="String" />
                <asp:Parameter Name="original_so_thich" Type="String" />
                <asp:Parameter Name="original_so_dien_thoai" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
