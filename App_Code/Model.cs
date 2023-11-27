﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class contract
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public contract()
    {
        this.servies = new HashSet<servy>();
    }

    public int contract_number { get; set; }
    public string details { get; set; }
    public string day { get; set; }
    public string month { get; set; }
    public string year { get; set; }
    public int customer_code { get; set; }
    public int emp_id { get; set; }
    public int pay_me_number { get; set; }

    public virtual employee employee { get; set; }
    public virtual payment_methods payment_methods { get; set; }
    public virtual customer customer { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<servy> servies { get; set; }
}

public partial class customer
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public customer()
    {
        this.contracts = new HashSet<contract>();
        this.customer_phone = new HashSet<customer_phone>();
    }

    public int customer_code { get; set; }
    public string name { get; set; }
    public string address { get; set; }
    public string email { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<contract> contracts { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<customer_phone> customer_phone { get; set; }
}

public partial class customer_phone
{
    public int customer_code { get; set; }
    public string phone { get; set; }

    public virtual customer customer { get; set; }
}

public partial class employee
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public employee()
    {
        this.contracts = new HashSet<contract>();
    }

    public int emp_id { get; set; }
    public string username { get; set; }
    public string password { get; set; }
    public string address { get; set; }
    public string phone { get; set; }
    public string name { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<contract> contracts { get; set; }
}

public partial class offer
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public offer()
    {
        this.servies = new HashSet<servy>();
    }

    public int offers_number { get; set; }
    public string name { get; set; }
    public string details { get; set; }
    public string discount { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<servy> servies { get; set; }
}

public partial class payment_methods
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public payment_methods()
    {
        this.contracts = new HashSet<contract>();
    }

    public int pay_me_number { get; set; }
    public string name { get; set; }
    public string expire_date { get; set; }
    public Nullable<decimal> cash { get; set; }
    public Nullable<decimal> visa { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<contract> contracts { get; set; }
}

public partial class servy
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public servy()
    {
        this.contracts = new HashSet<contract>();
        this.offers = new HashSet<offer>();
    }

    public int servies_number { get; set; }
    public string servies_name { get; set; }
    public string details { get; set; }
    public decimal price { get; set; }
    public string type { get; set; }
    public string insurance { get; set; }
    public int insurance_number { get; set; }
    public string name { get; set; }
    public string date { get; set; }
    public decimal value { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<contract> contracts { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<offer> offers { get; set; }
}
