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
    
    public partial class NGUOI_DANH_GIA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NGUOI_DANH_GIA()
        {
            this.BAI_THI_UNG_VIEN = new HashSet<BAI_THI_UNG_VIEN>();
        }
    
        public string HO_TEN { get; set; }
        public string EMAIL { get; set; }
        public string CHUC_VU { get; set; }
        public Nullable<System.DateTime> NGAY_TAO { get; set; }
        public Nullable<int> ID_NGUOI_TAO { get; set; }
        public Nullable<System.DateTime> NGAY_SUA { get; set; }
        public Nullable<int> ID_NGUOI_SUA { get; set; }
        public int ID { get; set; }
        public Nullable<bool> TT_XOA { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BAI_THI_UNG_VIEN> BAI_THI_UNG_VIEN { get; set; }
    }
}
