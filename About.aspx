<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ControleAUTO.About" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h4>Produtos Cadastrados</h4>
    <asp:GridView runat="server" ID="grdProdResult"
        AutoGenerateColumns="False"
        GridLines="None"
        PageSize="100"
        PagerSettings-Mode="Numeric"
        PagerSettings-Position="Bottom"
        PagerSettings-PageButtonCount="10"
        ShowHeaderWhenEmpty="true"
        EmptyDataText="Nenhum produto localizado"
        EmptyDataRowStyle-CssClass="text-center"
        CssClass="table table-hover mb-00">
        <Columns>
            <asp:BoundField DataField="Code" HeaderText="Código" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="Descricao" HeaderText="Descrição" />
            <%--<asp:BoundField DataField="Preco" HeaderText="Preço" />--%>
            <asp:TemplateField HeaderText="Preço" HeaderStyle-Width="125px" HeaderStyle-CssClass="text-right" ItemStyle-CssClass="text-right">
                <ItemTemplate><%# "R$ " + decimal.Parse(Eval("Preco").ToString()).ToString("N2") %></ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Qtd" HeaderText="Qtd" />
        </Columns>
    </asp:GridView>
    <hr />
    <div class="form-group">
        <div class="col-sm-10 col-sm-offset-4 text-center">
            <br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Novo Produto"
                OnClick="btnCadastrar_Click" CssClass="btn btn-primary btn-lg btn-block"/>
        </div>
    </div>
</asp:Content>