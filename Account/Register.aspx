<%@ Page Title="Đăng Ký" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.vb" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<div class="sections">
    <div class="container">
        <div class="col-ms-12">
            <hgroup class="title">
                <h1><%: Page.Title %>.</h1>
            </hgroup>

            <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
                <LayoutTemplate>
                    <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
                    <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
                </LayoutTemplate>
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                        <ContentTemplate>

                            <p class="validation-summary-errors">
                                <asp:Literal runat="server" ID="ErrorMessage" />
                            </p>

                            <div class="form-group">
                                <div class="input-group col-sm-6">
                                    <asp:TextBox runat="server" ID="UserName" class="form-control" placeholder="Tên đăng nhập"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                        CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                                </div>
                                <div class="input-group col-sm-6">
                                    <asp:TextBox runat="server" ID="Email" TextMode="Email" class="form-control" placeholder="Email"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                        CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                                </div>
                                <div class="input-group col-sm-6">
                                    <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control" placeholder="Mật khẩu"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                        CssClass="field-validation-error" ErrorMessage="The password field is required." />
                                </div>
                                <div class="input-group col-sm-6">
                                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="form-control" placeholder="Nhập lại Mật khẩu"/>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                            CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Button runat="server" CommandName="MoveNext" Text="Register" class="btn btn-danger"/>
                            </div>
                            <p>
                                Nếu đã có tài khoản mời bạn <a href="/Account/login.aspx">Đăng Nhập</a>
                            </p>
                        </ContentTemplate>
                        <CustomNavigationTemplate />
                    </asp:CreateUserWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </div>
</div>
</asp:Content>