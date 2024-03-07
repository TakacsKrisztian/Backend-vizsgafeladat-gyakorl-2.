using Takács_Krisztián_backend2.Models;

namespace Takács_Krisztián_backend2
{
    public static class Extensions
    {
        public static VersenyzoDto AsDto(this Versenyzo versenyzo)
        {
            return new VersenyzoDto(versenyzo.Id, versenyzo.Nev, versenyzo.Szakmaid, versenyzo.Orszagid, versenyzo.Pont, versenyzo.Orszag, versenyzo.Szakma);
        }
    }
}
