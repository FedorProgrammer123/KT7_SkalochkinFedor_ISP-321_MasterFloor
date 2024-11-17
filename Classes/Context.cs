using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
namespace KT7_SkalochkinFedor_ISP_321_MasterFloor.Classes
{
    public class Context : DbContext
    {
        public static Context _context;
        public DbSet<DataBase.PartnersImport> partnersImport { get; set; }
        public DbSet<DataBase.PartnerTitle> partnersTitle { get; set; }
        public DbSet<DataBase.PartnerType> partnersType { get; set; }
        public DbSet<DataBase.DirectorName> DirectorName { get; set; }
        public DbSet<DataBase.PostIndex> postindex { get; set; }
        public DbSet<DataBase.Region> region { get; set; }
        public DbSet<DataBase.City> city { get; set; }
        public DbSet<DataBase.Street> street { get; set; }
        public DbSet<DataBase.Address> address { get; set; }
        public static Context GetContext()
        {
            if (_context == null)
            {
                _context = new Context();
            }
            return _context;
        }
        public Context() : base("name=KT7_SkalochkinFedor_ISP321_MasterPolEntities")
        {

        }
    }
}
