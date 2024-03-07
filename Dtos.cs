using Takács_Krisztián_backend2.Models;

namespace Takács_Krisztián_backend2
{
    public record VersenyzoDto(int Id, string Nev, string Szakmaid, string Orszagid, int Pont, Orszag Orszag, Szakma Szakma);
    public record OrszagDto(string Id, string OrszagNev, ICollection<Versenyzo> Versenyzos);
    public record CreateVersenyzoDto(string Nev, string Szakmaid, string Orszagid, int Pont);
}