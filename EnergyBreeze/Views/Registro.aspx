<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="Views_Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row border-bottom text-center">
            <div class="col-6">Registro</div>
        </div>
        <div class="row border-bottom">
            <div class="col-3">Cédula</div>
            <div class="col-3">
                <input type="text" class="form-control" runat="server" id="R_Cedula" required />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Nombre</div>
            <div class="col-3">
                <input type="text" class="form-control" runat="server" id="R_Nom" required />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Apellido</div>
            <div class="col-3">
                <input type="text" class="form-control" runat="server" id="R_Apellido" required />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Correo</div>
            <div class="col-3">
                <input type="text" class="form-control" runat="server" id="R_Correo" required />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Celular</div>
            <div class="col-3">
                <input type="text" class="form-control" runat="server" id="R_Celular" required />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Teléfono Fijo</div>
            <div class="col-3">
                <input type="text" class="form-control" runat="server" id="R_Tel" />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Fecha de Nacimiento</div>
            <div class="col-3">
                <input type="date" class="form-control" runat="server" id="R_Fecha" required />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Usuario</div>
            <div class="col-3">
                <input type="text" class="form-control" runat="server" id="R_Usuario" required />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-3">Contraseña</div>
            <div class="col-3">
                <input type="password" class="form-control" runat="server" id="R_Contraseña" required />
            </div>
        </div>
        <br />
    </div>
    <input type="submit" runat="server" onserverclick="Btn_Registrar" class="btn btn-success" value="Registrar" />
    <div class="form-text">
        <span class="form-label text-secondary">¿Ya tienes una cuenta EnergyBreeze?</span>
        <a href="InicioSesion.aspx">¡Inicia Sesión Aquí!</a>
    </div>
</asp:Content>
