using Takács_Krisztián_backend2.Models;
using Microsoft.AspNetCore.Mvc;

namespace Takács_Krisztián_backend2.Controllers
{
    [Route("api/EuSkill")]
    [ApiController]
    public class EuSkillController : ControllerBase
    {
        [HttpGet("getVersenyzoK")]
        public ActionResult GetVersenyzok()
        {
            using (var context = new EuroskillsContext())
            {
                try
                {
                    return Ok(context.Versenyzos.ToList());
                }
                catch (Exception ex)
                {
                    return BadRequest(ex.Message);
                }
            }
        }

        [HttpGet("getVersenyzo/{id}")]
        public ActionResult GetById(int id)
        {
            using (var context = new EuroskillsContext())
            {
                try
                {
                    return Ok(context.Versenyzos.Where(x => x.Id == id).ToList());
                }
                catch (Exception ex)
                {
                    return NotFound(ex.Message);
                }
            }
        }

        [HttpGet("osszesOrszagSzama")]
        public ActionResult GetOrszagok()
        {
            using (var context = new EuroskillsContext())
            {
                try
                {
                    return Ok(context.Orszags.ToList());
                }
                catch (Exception ex)
                {
                    return BadRequest(ex.Message);
                }
            }
        }

        [HttpPost("addVersenyzo/{UID}")]
        public ActionResult<VersenyzoDto> Post(string UID, CreateVersenyzoDto versenyzo)
        {
            if (UID != "FKB3F4FEA09CE43C")
            {
                return StatusCode(404, "Helytelen azonosító!");
            }

            using (var context = new EuroskillsContext())
            {
                try
                {
                    var request = new Versenyzo
                    {
                        Nev = versenyzo.Nev,
                        Szakmaid = versenyzo.Szakmaid,
                        Orszagid = versenyzo.Orszagid,
                        Pont = versenyzo.Pont,
                    };

                    context.Versenyzos.Add(request);
                    context.SaveChanges();

                    return StatusCode(201, "Versenyző hozzáadása sikeresen megtörtént.");
                }
                catch (Exception ex)
                {
                    return StatusCode(400, ex.Message);
                }
            }
        }
    }
}