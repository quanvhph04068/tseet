<%@ Page Title="Đăng nhập" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.vb" Inherits="Account_Login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="sections">
        <div class="container">
            <div class="col-ms-12">
                <hgroup class="title">
                    <h1><%: Title %></h1>
                </hgroup>
    
                <section id="loginForm">
                    <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
                        <LayoutTemplate>
                            <p class="validation-summary-errors">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                            <div class="form-group">
                                <div class="input-group col-sm-6">
                                    <asp:TextBox runat="server" ID="UserName" class="form-control" placeholder="Tên đăng nhập"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                            CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                                </div>
                                <div class="input-group col-sm-6">
                                    <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control" placeholder="Mật khẩu"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                        CssClass="field-validation-error" ErrorMessage="The password field is required." />
                                </div>
                                <div class="input-group">
                                    <asp:CheckBox runat="server" ID="RememberMe" />
                                    <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Ghi nhớ tôi?</asp:Label>
                                    <asp:Button runat="server" CommandName="Login" Text="Log in" class="btn btn-danger"/>
                                </div>
                            </div>
                        </LayoutTemplate>
                    </asp:Login>
                    <p>
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Đăng Ký</asp:HyperLink>
                        nếu bạn chưa có tài khoản.
                    </p>
                </section>
            </div>
        </div>
    </div>
</asp:Content>