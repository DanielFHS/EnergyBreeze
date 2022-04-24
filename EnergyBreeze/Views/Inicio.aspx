<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.master" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Views_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <section class="textos-header">
            <h1>Para una energía más limpia</h1>
            <h2>Energy Breeze</h2>
        </section>
        <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #08f;"></path></svg></div>
    </header>
    <main>
        <section class="sobre-nosotros">
            <h2>Energy Breeze es un proyecto que busca la manera de utilizar y aprovechar la energia del viento...</h2>
            <div class="Vortex-Gif">
                <img width="512" height="455" src="https://vortexbladeless.com/wp-content/uploads/2018/06/vortex-bladeless-design.png" class="vc_single_image-img attachment-full" alt="vortex bladeless scheme" title="Vortex Bladeless Aerogenerator" srcset="https://vortexbladeless.com/wp-content/uploads/2018/06/vortex-bladeless-design.png 512w, https://vortexbladeless.com/wp-content/uploads/2018/06/vortex-bladeless-design-338x300.png 338w" sizes="(max-width: 512px) 100vw, 512px">
            </div>
        </section>
        <section class="Galeria">
            <div class="Contenedor">
                <h2>Galería</h2>
                <div class="Galeria-port">
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/Imagen1.jpg" alt="" />
                        <div class="Hover-imagen">
                            <img src="../Resources/Imagenes/Hover.png" alt="" />
                            <p>Vereda de Madrid Cundinamarca</p>
                        </div>
                    </div>
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/Imagen1.jpg" alt="" />
                        <div class="Hover-imagen">
                            <img src="../Resources/Imagenes/Hover.png" alt="" />
                            <p>Vereda de Madrid Cundinamarca</p>
                        </div>
                    </div>
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/Imagen1.jpg" alt="" />
                        <div class="Hover-imagen">
                            <img src="../Resources/Imagenes/Hover.png" alt="" />
                            <p>Vereda de Madrid Cundinamarca</p>
                        </div>
                    </div>
                    <div class="Imagen-port">
                        <img src="../Resources/Imagenes/Imagen1.jpg" alt="" />
                        <div class="Hover-imagen">
                            <img src="../Resources/Imagenes/Hover.png" alt="" />
                            <p>Vereda de Madrid Cundinamarca</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="Servicio">
            <div class="Contenedor">
                <h2>Nuestros Servicio</h2>
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
</asp:Content>

