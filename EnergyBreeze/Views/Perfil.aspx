<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Views_Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row border-bottom">
            <div class="col-6">
                <b>Cédula</b>
            </div>
            <div class="col-6">
                <input type="text" class="form-control" runat="server" id="cedula" readonly />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-6">
                <b>Nombre</b>
            </div>
            <div class="col-6">
                <input type="text" class="form-control" runat="server" id="nombre" readonly />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-6">
                <b>Apellido</b>
            </div>
            <div class="col-6">
                <input type="text" class="form-control" runat="server" id="apellido" readonly />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-6">
                <b>Celular</b>
            </div>
            <div class="col-6">
                <input type="text" class="form-control" runat="server" id="celular" readonly />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-6">
                <b>Teléfono</b>
            </div>
            <div class="col-6">
                <input type="text" class="form-control" runat="server" id="telefono" readonly />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-6">
                <b>Fecha de Nacimiento</b>
            </div>
            <div class="col-6">
                <input type="text" class="form-control" runat="server" id="fecha" readonly />
            </div>
        </div>
        <br />
        <div class="row border-bottom">
            <div class="col-6">
                <b>Usuario</b>
            </div>
            <div class="col-6">
                <input type="text" class="form-control" runat="server" id="user" readonly />
            </div>
        </div>
        <br />
    </div>
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
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Volver</button>
                    <button type="button" class="btn btn-primary" runat="server" onserverclick="Btn_Editar">Editar</button>
                </div>
            </div>
        </div>
    </div>
    <div>
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ModalContraseña">Editar Contraseña</button>
        <div class="modal fade" id="ModalContraseña">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Editar Contraseña</h5>
                        <button type="button" class="btn btn-close" data-bs-dismiss="modal" aria-label="close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row border-bottom">
                                <div class="col-6">
                                    <b>Contraseña Actual</b>
                                </div>
                                <div class="col-6">
                                    <input type="text" class="form-control" runat="server" id="CActual" readonly />
                                </div>
                            </div>
                            <br />
                            <div class="row border-bottom">
                                <div class="col-6">
                                    <b>Contraseña Nueva</b>
                                </div>
                                <div class="col-6">
                                    <input type="text" class="form-control" runat="server" id="CNueva" />
                                </div>
                            </div>
                            <br />
                            <div class="row border-bottom">
                                <div class="col-6">
                                    <b>Confirmar Contraseña</b>
                                </div>
                                <div class="col-6">
                                    <input type="text" class="form-control" runat="server" id="Confirmacion" />
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Volver</button>
                        <button type="button" class="btn btn-primary" runat="server" onserverclick="Btn_Contraseña">Editar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

