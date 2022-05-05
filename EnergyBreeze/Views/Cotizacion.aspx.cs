using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Cotizacion : System.Web.UI.Page
{
    private int p = 0;
    private int num_id = 1;
    private int metodo;
    protected void Page_Load(object sender, EventArgs e)
    {
        switch (Tamaño.SelectedValue)
        {
            case "Pequeño":
                precio.Value = "$4000";
                p = 4000;
                break;
            case "Mediano":
                precio.Value = "$8000";
                p = 8000;
                break;
            case "Grande":
                precio.Value = "$12000";
                p = 12000;
                break;
        }
        switch (Metodo.SelectedValue)
        {
            case "Efectivo":
                metodo = 1;
                break;
            case "Tarjeta":
                metodo = 2;
                break;
            case "PSE":
                metodo = 3;
                break;
            case "Nequi":
                metodo = 4;
                break;
            case "Daviplata":
                metodo = 5;
                break;
        }
    }
    protected void Btn_Cotizar(object sender, EventArgs e)
    {
            
    }
}