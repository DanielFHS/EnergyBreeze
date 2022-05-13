using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("turbina", Schema = "public")]
public class ETurbina
{
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("tamanio")]
    public string Tamaño { get; set; }
    [Column("precio")]
    public string Precio { get; set; }
}