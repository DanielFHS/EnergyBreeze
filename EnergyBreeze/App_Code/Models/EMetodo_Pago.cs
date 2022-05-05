using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("metodo_pago", Schema = "public")]
public class EMetodo_Pago
{
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("metodo")]
    public char Metodo { get; set; }
}