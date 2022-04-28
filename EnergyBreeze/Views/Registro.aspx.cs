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
    protected void Btn_Registrar(object sender, EventArgs e)
    {
        if (R_Correo.Value.Contains("@"))
        {
            EUsuario usuario_nuevo = new EUsuario
            {
                Cedula = R_Cedula.Value,
                Nombre = R_Nom.Value,
                Apellido = R_Apellido.Value,
                Correo = R_Correo.Value,
                Celular = R_Celular.Value,
                Fijo = R_Tel.Value,
                Fecha = Convert.ToDateTime(R_Fecha.Value),
                Usuario = R_Usuario.Value,
                Contraseña = R_Contraseña.Value
            };
            new UsuarioDAO().InsertarUsuario(usuario_nuevo);
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Registro exitoso');window.location.href=\"InicioSesion.aspx\";</script>");
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El correo debe llevar un @');window.location.href=\"Registro.aspx\";</script>");
        }
    }
}