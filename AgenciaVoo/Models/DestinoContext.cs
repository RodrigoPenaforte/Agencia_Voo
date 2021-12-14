using Microsoft.EntityFrameworkCore;

namespace AgenciaVoo.Models
{
    public class DestinoContext: DbContext
    {
        public DestinoContext(DbContextOptions<DestinoContext> opt) : base(opt)
        {

        }

        public DbSet<Destino> Destinos { get; set; }
    }
}
