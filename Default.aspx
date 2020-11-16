<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ControleAUTO._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container-fluid">
        <div class="row pt-60">
            <div class="col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4 mt-50">
                <div>
                    <div class="logo fl">
                        <%--<img src="images/header/logo.png" title="Legal Control" width="450px" />--%>
                    </div>
                    <asp:Panel ID="pnlPass" runat="server" Visible="true">
                        <div class="form-group" runat="server" id="divLoginNow">
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="txtLogin" runat="server" CssClass="form-control input-lg" Type="Text" placeholder="Digite seu Login" autofocus="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divPassNow">
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control input-lg" placeholder="Digite sua Senha" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divPassOld" visible="false">
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="txtAccountPasswordOld" runat="server" TextMode="Password" CssClass="form-control input-lg" MaxLength="30" placeholder="Senha Atual"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="form-group" runat="server" id="divNewPass1" visible="false">
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="txtAccountPasswordNew" runat="server" TextMode="Password" CssClass="form-control input-lg" MaxLength="30" placeholder="Nova Senha"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divNewPass2" visible="false">
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="txtAccountPasswordRetype" runat="server" TextMode="Password" CssClass="form-control input-lg" MaxLength="30" placeholder="Confirme Senha"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <br />
                                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn btn-primary btn-lg btn-block" OnClick="btnEntrar_Click" />
                                <asp:Button ID="btnAlterarSenha" runat="server" Text="Gravar" CssClass="btn btn-warning btn-lg btn-block" Visible="false" OnClick="btnAlterarSenha_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <%--<div class="clearfix"></div>--%>
                    <div class="form-group text-center">
                        <div class="col-sm-10 text-center">
                            <br />
                            <asp:LinkButton ID="lnkForgotPass" runat="server"
                                    Visible="true" ForeColor="Red">Esqueceu sua senha ?</asp:LinkButton>
                        </div>
                        <div class="col-sm-10 text-center">
                            <br />
                            <asp:LinkButton ID="lnkForgotPassBack" runat="server"
                                    Visible="false" ForeColor="Black">Cancelar</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>