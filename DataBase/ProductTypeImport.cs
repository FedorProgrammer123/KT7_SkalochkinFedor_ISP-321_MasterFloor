//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KT7_SkalochkinFedor_ISP_321_MasterFloor.DataBase
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProductTypeImport
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProductTypeImport()
        {
            this.ProductsImport = new HashSet<ProductsImport>();
        }
    
        public int IDTypeProduction { get; set; }
        public string TypeProduction { get; set; }
        public double CoeffTypeProduction { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductsImport> ProductsImport { get; set; }
    }
}
