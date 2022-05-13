using System.Data.Entity;

public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }
    public Mapeo() : base("name=EnergyBreezeDB") { }
    private readonly string schema;
    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        modelBuilder.HasDefaultSchema(this.schema);
        base.OnModelCreating(modelBuilder);
    }
    public virtual DbSet<EUsuario> Usuario { get; set; }
    public virtual DbSet<EMetodo_Pago> Metodo_Pago { get; set; }
    public virtual DbSet<EPqr> Pqr { get; set; }
    public virtual DbSet<ETurbina> Turbina { get; set; }
    public virtual DbSet<ECotizacion> Cotizacion { get; set; }
}