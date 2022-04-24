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
    public virtual DbSet<ERol> Rol { get; set; }
}