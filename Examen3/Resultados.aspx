<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="Examen3.Resultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h1 class="text-center">Todos los Resultados</h1>
        <asp:Label runat="server" ID="lblUsuario" CssClass="form-label text-center" />
        <div class="col--12 p-4">
            <asp:GridView runat="server" ID="dgResultados" PageSize="10" HorizontalAlign="Center"
                CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
                RowStyle-CssClass="rows" AllowPaging="True"    />
        </div>
    </section>
</asp:Content>
