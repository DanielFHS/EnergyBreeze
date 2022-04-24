<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="Views_Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <input runat="server" type="text" class="form-control" id="R_cedula" />
    <br />
    <br />
    <input runat="server" type="text" class="form-control" id="R_nombre" />
    <input runat="server" type="submit" class="btn btn-primary" onserverclick="Btn_Continuar_Clic" />
</asp:Content>

