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
    
    public partial class TBL_HOP_DONG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_HOP_DONG()
        {
            this.TBL_HE_THONG = new HashSet<TBL_HE_THONG>();
        }
    
        public int ID { get; set; }
        public string MA_HOP_DONG { get; set; }
        public string SO_HOP_DONG { get; set; }
        public string TEN { get; set; }
        public string MO_TA { get; set; }
        public Nullable<int> STT { get; set; }
        public Nullable<bool> TT_XOA { get; set; }
        public Nullable<int> ID_NGUOI_TAO { get; set; }
        public Nullable<System.DateTime> NGAY_TAO { get; set; }
        public Nullable<int> ID_NGUOI_SUA { get; set; }
        public Nullable<System.DateTime> NGAY_SUA { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_HE_THONG> TBL_HE_THONG { get; set; }
    }
}
