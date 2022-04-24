using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class RolDAO
{
    public ERol ObtenerRol(int id_rol)
    {
        using (var db = new Mapeo())
        {
            return db.Rol.Where(x => x.Id_Rol.Equals(id_rol)).FirstOrDefault();
        }
    }
}