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
    
    public partial class PartnersImport
    {
        public int IDPartners { get; set; }
        public int TypePartner { get; set; }
        public int TitlePartner { get; set; }
        public int Director { get; set; }
        public string EmailPartner { get; set; }
        public string PhonePartner { get; set; }
        public int AddressPartner { get; set; }
        public long INN { get; set; }
        public int Rating { get; set; }
    
        public virtual AddressPartner AddressPartner1 { get; set; }
        public virtual Directors Directors { get; set; }
        public virtual PartnerTitle PartnerTitle { get; set; }
        public virtual PartnerType PartnerType { get; set; }
    }
}
