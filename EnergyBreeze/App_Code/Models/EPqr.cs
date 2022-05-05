using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("pqr", Schema = "public")]
public class EPqr
{
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("descripcion")]
    public string Descripcion { get; set; }
    [Column("id_usuario")]
    public string Id_Usuario { get; set; }
    [Column("fecha_reclamo")]
    public DateTime Fecha_Reclamo { get; set; }
}