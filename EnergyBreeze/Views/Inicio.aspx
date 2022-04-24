<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Views_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <section class="textos-header">
            <h1>Para una energía más limpia</h1>
            <h2>Energy Breeze</h2>
        </section>
        <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #fff;"></path></svg></div>
    </header>
    <main>
        <section class="Contenedor sobre-nosotros">
            <div class="Vortex-Gif">
                <img src="../Resources/Imagenes/Vortex.png" alt="" />
                <div class="Contenido-textos">
                    <p>Energy Breeze es un proyecto que utiliza la energia del viento....</p>
                    <p>Contenido interactivo</p>
                </div>
            </div>
        </section>
        <section class="Galeria">
            <div class="Contenedor">
                <h2 class="titulo">Galería</h2>
                <div class="Galeria-port">
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/Imagen1.jpg" alt="" />
                        <div class="Hover-Galeria">
                            <img src="../Resources/Imagenes/Hover1.jpg" alt="" />
                            <p>Vereda de Madrid Cundinamarca</p>
                        </div>
                    </div>
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/Logo Normal.png" alt="" />
                        <div class="Hover-Galeria">
                            <img src="../Resources/Imagenes/Hover1.jpg" alt="" />
                            <p>Logo empresa</p>
                        </div>
                    </div>
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/Imagen2.jpg" alt="" />
                        <div class="Hover-Galeria">
                            <img src="../Resources/Imagenes/Hover1.jpg" alt="" />
                            <p>Turbina</p>
                        </div>
                    </div>
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/portada.jpg" alt="" />
                        <div class="Hover-Galeria">
                            <img src="../Resources/Imagenes/Hover1.jpg" alt="" />
                            <p>Paisaje</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="Servicio">
            <div class="Contenedor">
                <h2 class="titulo">Nuestros Servicio</h2>
                <div class="Servicio-cont">
                    <div class="Servicio-ind">
                        <img src="" alt="" />
                        <h3>Nombre</h3>
                        <p>Lorem</p>

                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="Contenedor-footer">
            <div class="Contenido-foo">
                <h4>Número</h4>
                <p>8209633</p>
            </div>
            <div class="Contenido-foo">
                <h4>Email</h4>
                <p>EnergyBreeze@gmail.com</p>
            </div>
            <div class="Contenido-foo">
                <h4>Ubicación</h4>
                <p>Colombia</p>
            </div>
        </div>
        <h2 class="titulo-final">&copy; Energy Breeze </h2>
    </footer>
</asp:Content>

