<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ControleAUTO.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container-fluid">
        <div class="row pt-60">
            <div class="col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4 mt-50">
                <div>
                    <asp:Panel ID="pnlAdd" runat="server" Visible="true">
                        <div class="form-group" runat="server" id="divAdd">
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="TxtNome" runat="server" CssClass="form-control input-lg" Type="Text" placeholder="Nome" autofocus="true"></asp:TextBox>
                            </div>
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="TxtDescricao" runat="server" CssClass="form-control input-lg" Type="Text" placeholder="Descricao" autofocus="true"></asp:TextBox>
                            </div>
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="TxtPreco" runat="server" CssClass="form-control input-lg" Type="Text" placeholder="Preço" autofocus="true"></asp:TextBox>
                            </div>
                            <div class="col-xs-12">
                                <br />
                                <asp:TextBox ID="TxtQtd" runat="server" CssClass="form-control input-lg" Type="Text" placeholder="Quantidade" autofocus="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br />
                                <asp:Button ID="btnCadastrar" runat="server" Text="Entrar" CssClass="btn btn-primary btn-lg btn-block" OnClick="btnCadastrar_Click" />
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
