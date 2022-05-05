<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Cotizacion.aspx.cs" Inherits="Views_Cotizacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Cotizar un producto EnergyBreeze</h2>
    <div class="row justify-content-center">
        <div class="col-9 col-md-4">
            <div class="text-center">
                <span class="text-black">Seleccione un tamaño:</span>
            </div>
        </div>
        <div class="col-5 col-md-4 p-0">
            <asp:DropDownList ID="Tamaño" runat="server" class="form-select" AutoPostBack="True">
                <asp:ListItem Selected="True">Pequeño</asp:ListItem>
                <asp:ListItem>Mediano</asp:ListItem>
                <asp:ListItem>Grande</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <br />
    <div class="row justify-content-center">
        <div class="col-9 col-md-4">
            <div class="text-center">
                <span class="text-black">Seleccione la cantidad de unidades:</span>
            </div>
        </div>
        <div class="col-5 col-md-4 p-0">
            <input type="text" runat="server" id="cantidad" />
        </div>
    </div>
    <br />
    <div class="row justify-content-center">
        <div class="col-9 col-md-4">
            <div class="text-center">
                <span class="text-black">Precio por unidad de acuerdo al tamaño</span>
            </div>
        </div>
        <div class="col-5 col-md-4 p-0">
            <input type="text" runat="server" id="precio" readonly />
        </div>
    </div>
    <br />
    <div class="row justify-content-center">
        <div class="col-9 col-md-4">
            <div class="text-center">
                <span class="text-black">Seleccione un método de pago:</span>
            </div>
        </div>
        <div class="col-5 col-md-4 p-0">
            <asp:DropDownList ID="Metodo" runat="server" class="form-select" AutoPostBack="True">
                <asp:ListItem Selected="True">Efectivo</asp:ListItem>
                <asp:ListItem>Tarjeta</asp:ListItem>
                <asp:ListItem>PSE</asp:ListItem>
                <asp:ListItem>Nequi</asp:ListItem>
                <asp:ListItem>Daviplata</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
</asp:Content>

