<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Views_Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <input type="text" class="form-control" runat="server" id="cedula" readonly />
    <input type="text" class="form-control" runat="server" id="nombre" readonly />
    <input type="text" class="form-control" runat="server" id="apellido" readonly />
    <input type="text" class="form-control" runat="server" id="celular" readonly />
    <input type="text" class="form-control" runat="server" id="telefono" readonly />
    <input type="text" class="form-control" runat="server" id="fecha" readonly />
    <input type="text" class="form-control" runat="server" id="user" readonly />
    <input type="text" class="form-control" runat="server" id="cont" readonly />
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalEditar">Editar</button>
    <div class="modal fade" id="ModalEditar">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Editar Datos</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" arial-label="close"></button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row border-bottom">
                            <div class="col-6">
                                <b>Nombre</b>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" runat="server" id="nombre2" />
                            </div>
                        </div>
                        <br />
                        <div class="row border-bottom">
                            <div class="col-6">
                                <b>Apellido</b>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" runat="server" id="apellido2" />
                            </div>
                        </div>
                        <br />
                        <div class="row border-bottom">
                            <div class="col-6">
                                <b>Celular</b>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" runat="server" id="celular2" />
                            </div>
                        </div>
                        <br />
                        <div class="row border-bottom">
                            <div class="col-6">
                                <b>Teléfono Fijo</b>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" runat="server" id="telefono2" />
                            </div>
                        </div>
                        <br />
                        <div class="row border-bottom">
                            <div class="col-6">
                                <b>Usuario</b>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" runat="server" id="user2" />
                            </div>
                        </div>
                        <br />
                        <div class="row border-bottom">
                            <div class="col-6">
                                <b>Contraseña</b>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" runat="server" id="cont2" />
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Volver</button>
                    <button type="button" class="btn btn-primary" runat="server" onserverclick="Btn_Editar">Editar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

