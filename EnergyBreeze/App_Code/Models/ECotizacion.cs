using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("cotizacion", Schema = "public")]
public class ECotizacion
{
    [Key, Column("id")]
    public int Id_Cotizacion { get; set; }
    [Column("cantidad")]
    public int Cantidad { get; set; }
    [Column("fecha")]
    public DateTime Fecha { get; set; }
    [Column("id_turbina")]
    public int Id_Turbina { get; set; }
    [NotMapped]
    public ETurbina IdTurbina { get { return new TurbinaDAO().ObtenerTurbina(Id_Turbina); } set { } }
    [Column("id_usuario")]
    public string Id_Usuario { get; set; }
    [NotMapped]
    public EUsuario Cedula { get { return new UsuarioDAO().ObtenerUsuario(Id_Usuario); } set { } }
    [Column("medio_pago")]
    public int Medio_Pago { get; set; }
    [NotMapped]
    public EMetodo_Pago Metodo_Pago { get { return new Metodo_PagoDAO().ObtenerMetodo(Medio_Pago); } set { } }
    [Column("total")]
    public int Total { get; set; }
}