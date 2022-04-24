using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("usuario", Schema = "public")]
public class EUsuario
{
    [Key, Column("cedula")]
    public string Cedula { get; set; }
    [Column("nombres")]
    public string Nombre { get; set; }
    [Column("apellidos")]
    public string Apellido { get; set; }
    [Column("fecha_nacimiento")]
    public string Fecha_Nac { get; set; }
    [Column("celular")]
    public string Celular { get; set; }
    [Column("telefono_fijo")]
    public string Fijo { get; set; }
    [Column("correo")]
    public string Correo { get; set; }
    [Column("usuario")]
    public string Usuario { get; set; }
    [Column("contrasena")]
    public string Contraseña { get; set; }
}