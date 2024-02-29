namespace Takács_Krisztián_backend2.Models;

public partial class Versenyzo
{
    public int Id { get; set; }

    public string Nev { get; set; } = null!;

    public string Szakmaid { get; set; } = null!;

    public string Orszagid { get; set; } = null!;

    public int Pont { get; set; }

    public virtual Orszag Orszag { get; set; } = null!;

    public virtual Szakma Szakma { get; set; } = null!;
}