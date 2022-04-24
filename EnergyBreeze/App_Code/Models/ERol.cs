using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("rol", Schema = "public")]
public class ERol
{
    [Key, Column("id_rol")]
    public int Id_Rol { get; set; }
    [Column("tipo")]
    public string Tipo { get; set; }
}