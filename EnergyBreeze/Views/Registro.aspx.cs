using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Continuar_Clic(object sender, EventArgs e)
    {
        EUsuario usuario_nuevo = new EUsuario
        {
            Cedula = R_cedula.Value,
            Nombre = R_nombre.Value
        };
        new UsuarioDAO().InsertarUsuario(usuario_nuevo);
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Registro exitoso');window.location.href=\"VInicioSesion.aspx\";</script>");
    }
}