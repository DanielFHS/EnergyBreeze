using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Perfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            EUsuario usuario = new UsuarioDAO().ObtenerUsuarios().Where(x => x.Cedula.Equals(((EUsuario)Session["usuario"]).Cedula)).FirstOrDefault();
            cedula.Value = usuario.Cedula;
            nombre.Value = usuario.Nombre;
            nombre2.Value = usuario.Nombre;
            apellido.Value = usuario.Apellido;
            apellido2.Value = usuario.Apellido;
            celular.Value = usuario.Celular;
            celular2.Value = usuario.Celular;
            telefono.Value = usuario.Fijo;
            telefono2.Value = usuario.Fijo;
            fecha.Value = usuario.Fecha.ToShortDateString();
            user.Value = usuario.Usuario;
            user2.Value = usuario.Usuario;
            CActual.Value = usuario.Contraseña;
            if (usuario.Fijo == "")
            {
                telefono.Value = "No hay Teléfono agregado";
            }
        }
    }
    protected void Btn_Editar(object sender, EventArgs e)
    {
        EUsuario usuario = new UsuarioDAO().ObtenerUsuarios().Where(x => x.Cedula.Equals(cedula.Value)).FirstOrDefault();
        usuario.Cedula = cedula.Value;
        usuario.Nombre = nombre2.Value;
        usuario.Apellido = apellido2.Value;
        usuario.Celular = celular2.Value;
        usuario.Fijo = telefono2.Value;
        usuario.Usuario = user2.Value;
        new UsuarioDAO().ActualizarUsuario(usuario);
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Datos Actualizados');window.location.href=\"Perfil.aspx\";</script>");
    }
    protected void Btn_Contraseña(object sender, EventArgs e)
    {
        if (CNueva.Value == Confirmacion.Value)
        {
            EUsuario usuario = new UsuarioDAO().ObtenerUsuarios().Where(x => x.Cedula.Equals(cedula.Value)).FirstOrDefault();
            usuario.Contraseña = CNueva.Value;
            new UsuarioDAO().ActualizarUsuario(usuario);
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Contraseña Actualizada');window.location.href=\"Perfil.aspx\";</script>");
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Las Contraseñas no coinciden');window.location.href=\"Perfil.aspx\";</script>");
        }
        if (CNueva.Value == CActual.Value)
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('La nueva contraseña no puede ser igual a la actual');window.location.href=\"Perfil.aspx\";</script>");
        }
    }
}