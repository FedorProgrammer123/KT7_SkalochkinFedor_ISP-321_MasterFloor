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
        public static Context GetContext()
        {
            if (_context == null)
            {
                _context = new Context();
            }
            return _context;
        }
        public Context() : base("name=Entities")
        {

        }
    }
}
