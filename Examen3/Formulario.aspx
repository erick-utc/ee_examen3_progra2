<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Examen3.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="container">
            <h1 class="text-center">Formulario</h1>
            <div class="container">
                <div class="row">
                    <div class="col-3 p-2 d-inline-block">
                        <label for="txtNombre" class="form-label ">Nombre:</label>
                        <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" required="true"/>
                    </div>
                    <div class="col-3 p-2 d-inline-block">
                        <label for="txtEdad" class="form-label ">Edad:</label>
                        <asp:TextBox runat="server" ID="txtEdad" CssClass="form-control" type="number" min="18" max="50" required="true"/>
                    </div>
                    <div class="col-3 p-2 d-inline-block">
                        <label for="txtCorreo" class="form-label ">Correo:</label>
                        <asp:TextBox runat="server" ID="txtCorreo" CssClass="form-control" type="email" required="true"/>
                    

                    </div>
                    <div class="col-3 p-2 d-inline-block">
                        <label for="ddPartidos" class="form-label">Partidos:</label>
                        <asp:DropDownList runat="server" ID="ddPartidos" CssClass="form-select" required="true"/>
                    </div>
                </div>
                <div class="row">
                    <asp:Button runat="server" ID="BtnAgregar" CssClass="btn btn-primary col-2" Text="Salvar" OnClick="btnAgregar_Click"/>
                </div>
        
            </div>
        </section>
</asp:Content>
