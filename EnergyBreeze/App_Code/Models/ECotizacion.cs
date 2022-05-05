using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("cotizacion", Schema = "public")]
public class ECotizacion
{
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("cantidad")]
    public int Cantidad { get; set; }
    [Column("id_metodo_pago")]
    public int Id_Metodo_Pago { get; set; }
    [NotMapped]
    public EMetodo_Pago Metodo_Pago { get { return new Metodo_PagoDAO().ObtenerMetodos(Id_Metodo_Pago); } set { } }
    [Column("precio_total")]
    public string Precio_Total { get; set; }
}