//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CPanel.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class MUC_DO_CAU_HOI
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MUC_DO_CAU_HOI()
        {
            this.CAU_HOI_MUC_DO = new HashSet<CAU_HOI_MUC_DO>();
        }
    
        public string MA_MUC_DO { get; set; }
        public string MO_TA { get; set; }
        public Nullable<System.DateTime> NGAY_TAO { get; set; }
        public Nullable<int> ID_NGUOI_TAO { get; set; }
        public Nullable<System.DateTime> NGAY_SUA { get; set; }
        public Nullable<int> ID_NGUOI_SUA { get; set; }
        public int ID { get; set; }
        public Nullable<bool> TT_XOA { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CAU_HOI_MUC_DO> CAU_HOI_MUC_DO { get; set; }
    }
}
