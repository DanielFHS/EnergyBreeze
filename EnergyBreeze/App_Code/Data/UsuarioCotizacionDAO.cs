using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de UsuarioCotizacionDAO
/// </summary>
public class UsuarioCotizacionDAO
{
    public void InsertarRelacion(EUsuarioCotizacion relacion)
    {
        using (var db = new Mapeo())
        {
            db.UsuarioCotizacion.Add(relacion);
            db.SaveChanges();
        }
    }
    public EUsuarioCotizacion ObtenerRelacion(string id_usuario)
    {
        using (var db = new Mapeo())
        {
            return db.UsuarioCotizacion.Where(x => x.Id_Usuario.Equals(id_usuario)).FirstOrDefault();
        }
    }
}