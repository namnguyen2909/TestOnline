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
    
    public partial class TBL_NGUOI_DUNG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_NGUOI_DUNG()
        {
            this.TBL_NGUOI_DUNG_QUYEN = new HashSet<TBL_NGUOI_DUNG_QUYEN>();
        }
    
        public int Id { get; set; }
        public string UserName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public Nullable<bool> isAdmin { get; set; }
        public Nullable<bool> isEnabled { get; set; }
        public string Password { get; set; }
        public string Tel { get; set; }
        public string FullName { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_NGUOI_DUNG_QUYEN> TBL_NGUOI_DUNG_QUYEN { get; set; }
    }
}
