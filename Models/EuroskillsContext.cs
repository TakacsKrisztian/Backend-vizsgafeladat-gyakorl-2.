using Microsoft.EntityFrameworkCore;

namespace Takács_Krisztián_backend2.Models;

public partial class EuroskillsContext : DbContext
{
    public EuroskillsContext()
    {
    }

    public EuroskillsContext(DbContextOptions<EuroskillsContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Orszag> Orszags { get; set; }

    public virtual DbSet<Szakma> Szakmas { get; set; }

    public virtual DbSet<Versenyzo> Versenyzos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseMySql("server=localhost;database=euroskills;user=root;sslmode=none", Microsoft.EntityFrameworkCore.ServerVersion.Parse("10.4.32-mariadb"));

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8_hungarian_ci")
            .HasCharSet("utf8");

        modelBuilder.Entity<Orszag>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("orszag");

            entity.Property(e => e.Id)
                .HasMaxLength(2)
                .HasColumnName("id");
            entity.Property(e => e.OrszagNev)
                .HasMaxLength(31)
                .HasColumnName("orszagNev");
        });

        modelBuilder.Entity<Szakma>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("szakma");

            entity.Property(e => e.Id)
                .HasMaxLength(2)
                .HasColumnName("id");
            entity.Property(e => e.SzakmaNev)
                .HasMaxLength(31)
                .HasColumnName("szakmaNev");
        });

        modelBuilder.Entity<Versenyzo>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("versenyzo");

            entity.HasIndex(e => e.Orszagid, "orszagid");

            entity.HasIndex(e => e.Szakmaid, "szakmaid");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnType("int(11)")
                .HasColumnName("id");
            entity.Property(e => e.Nev)
                .HasMaxLength(31)
                .HasColumnName("nev");
            entity.Property(e => e.Orszagid)
                .HasMaxLength(2)
                .HasColumnName("orszagid");
            entity.Property(e => e.Pont)
                .HasColumnType("int(11)")
                .HasColumnName("pont");
            entity.Property(e => e.Szakmaid)
                .HasMaxLength(2)
                .HasColumnName("szakmaid");

            entity.HasOne(d => d.Orszag).WithMany(p => p.Versenyzos)
                .HasForeignKey(d => d.Orszagid)
                .HasConstraintName("versenyzo_ibfk_2");

            entity.HasOne(d => d.Szakma).WithMany(p => p.Versenyzos)
                .HasForeignKey(d => d.Szakmaid)
                .HasConstraintName("versenyzo_ibfk_1");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}