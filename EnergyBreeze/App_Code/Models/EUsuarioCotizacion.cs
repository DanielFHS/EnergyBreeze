using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("usuario_cotizacion", Schema = "public")]
public class EUsuarioCotizacion
{
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("id_usuario")]
    public string Id_Usuario { get; set; }
    [NotMapped]
    public EUsuario Usuario { get { return new UsuarioDAO().ObtenerUsuario(Id_Usuario); } set { } }
    [Column("id_cotizacion")]
    public int Id_Cotizacion { get; set; }
    [NotMapped]
    public ECotizacion Cotizacion { get { return new CotizacionDAO().ObtenerCotizacion(Id_Cotizacion); } set { } }
}