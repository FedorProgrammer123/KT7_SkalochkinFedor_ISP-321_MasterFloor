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
    
    public partial class PartnerTitle
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PartnerTitle()
        {
            this.PartnerProductsImport = new HashSet<PartnerProductsImport>();
            this.PartnersImport = new HashSet<PartnersImport>();
            this.ProductsImport = new HashSet<ProductsImport>();
        }
    
        public int IDPartner { get; set; }
        public string TitlePartner { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PartnerProductsImport> PartnerProductsImport { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PartnersImport> PartnersImport { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductsImport> ProductsImport { get; set; }
    }
}
