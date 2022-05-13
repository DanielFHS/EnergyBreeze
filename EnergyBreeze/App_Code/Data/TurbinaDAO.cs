using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class TurbinaDAO
{
    public List<ETurbina> ObtenerTurbinas()
    {
        using (var db = new Mapeo())
        {
            return db.Turbina.ToList();
        }
    }
    public ETurbina ObtenerTurbina (int id)
    {
        using (var db = new Mapeo())
        {
            return db.Turbina.Where(x => x.Id.Equals(id)).FirstOrDefault();
        }
    }
}