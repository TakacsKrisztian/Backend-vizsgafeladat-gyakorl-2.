namespace Takács_Krisztián_backend2.Models;

public partial class Szakma
{
    public string Id { get; set; } = null!;

    public string SzakmaNev { get; set; } = null!;

    public virtual ICollection<Versenyzo> Versenyzos { get; set; } = new List<Versenyzo>();
}