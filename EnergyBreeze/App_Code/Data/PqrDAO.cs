using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class PqrDAO
{
    public List<EPqr> ObtenerPqrs()
    {
        using (var db = new Mapeo())
        {
            return db.Pqr.ToList();
        }
    }
}