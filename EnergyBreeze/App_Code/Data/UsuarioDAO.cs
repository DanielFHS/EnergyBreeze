using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class UsuarioDAO
{
    public List<EUsuario> ObtenerUsuarios()
    {
        using (var db = new Mapeo())
        {
            return db.Usuario.ToList();
        }
    }
    public bool VerificarUsuario(string usuario, string contraseña)
    {
        if (ObtenerUsuarios().Where(x => x.Usuario.Equals(usuario) && x.Contraseña.Equals(contraseña)).FirstOrDefault() != null)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public void InsertarUsuario(EUsuario usuario)
    {
        using (var db = new Mapeo())
        {
            db.Usuario.Add(usuario);
            db.SaveChanges();
        }
    }
    public void ActualizarUsuario(EUsuario usuario)
    {
        using (var db = new Mapeo())
        {
            db.Usuario.Attach(usuario);
            db.Entry(usuario).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}