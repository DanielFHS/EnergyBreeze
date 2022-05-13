using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Cotizacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] == null)
        {
            Response.Redirect("InicioSesion.aspx");
        }
        else
        {
            switch (ddl.SelectedValue)
            {
                case "Pequeño":
                    valor.Value = "$10.000";
                    obra.Value = "$5.000";
                    break;
                case "Mediano":
                    valor.Value = "$20.000";
                    obra.Value = "$10.000";
                    break;
                case "Grande":
                    valor.Value = "$30.000";
                    obra.Value = "$15.000";
                    break;
            }
        }
    }
    protected void Btn_Cotizar(object sender, EventArgs e)
    {
        int val = 0, obr = 0, tot = 0;
        int c = int.Parse(cant.Value), id = 0, id_pago = 1;
        if (ddltamanio.SelectedValue == "Pequeño")
        {
            id = 1;
            val = 10000;
            obr = 5000;
        } 
        else if (ddltamanio.SelectedValue == "Mediano")
        {
            id = 2;
            val = 20000;
            obr = 10000;
        } 
        else if (ddltamanio.SelectedValue == "Grande")
        {
            id = 3;
            val = 30000;
            obr = 15000;
        }
        switch (ddlpago.SelectedValue)
        {
            case "Efectivo":
                id_pago = 1;
                break;
            case "Tarjeta":
                id_pago = 2;
                break;
            case "PSE":
                id_pago = 3;
                break;
            case "Nequi":
                id_pago = 4;
                break;
            case "DaviPlata":
                id_pago = 5;
                break;
        }
        tot = c * (val + obr);
        ECotizacion cotizacion = new ECotizacion
        {
            Cantidad = c,
            Fecha = DateTime.Now,
            Id_Turbina = id,
            Id_Usuario = ((EUsuario)Session["usuario"]).Cedula,
            Medio_Pago = id_pago,
            Total = tot
        };
        new CotizacionDAO().AgregarCotizacion(cotizacion);
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Cotización Realizada con éxito');window.location.href=\"Inicio.aspx\";</script>");
    }
}