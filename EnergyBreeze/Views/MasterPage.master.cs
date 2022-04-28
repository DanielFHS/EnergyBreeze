using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["usuario"] == null)
        {
            MV_Perfil.ActiveViewIndex = 0;
        }
        else
        {
            MV_Perfil.ActiveViewIndex = 1;
        }
    }
    protected void Cerrar_Sesion(object sender, EventArgs e)
    {
        Session["usuario"] = null;
        Response.Redirect("Inicio.aspx");
    }
}
