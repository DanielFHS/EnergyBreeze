using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CotizacionDAO
{
    public List<ECotizacion> ObtenerCotizaciones()
    {
        using (var db = new Mapeo())
        {
            return db.Cotizacion.ToList();
        }
    }
    public ECotizacion ObtenerCotizacion(int id)
    {
        using (var db = new Mapeo())
        {
            return db.Cotizacion.Where(x => x.Id.Equals(id)).FirstOrDefault();
        }
    }
}