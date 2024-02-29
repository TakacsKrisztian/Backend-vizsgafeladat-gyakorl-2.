namespace Takács_Krisztián_backend2.Models;

public partial class Orszag
{
    public string Id { get; set; } = null!;

    public string OrszagNev { get; set; } = null!;

    public virtual ICollection<Versenyzo> Versenyzos { get; set; } = new List<Versenyzo>();
}