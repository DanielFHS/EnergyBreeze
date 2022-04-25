using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_InicioSesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Ingresar(object sender, EventArgs e)
    {
        if (new UsuarioDAO().VerificarUsuario(I_User.Value, I_Cont.Value))
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Bienvenido');window.location.href=\"Inicio.aspx\";</script>");
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Datos incorrectos');</script>");
        }
    }
}