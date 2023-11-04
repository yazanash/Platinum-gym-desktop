﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PlatinumGym.Core.Models.Employee;

namespace PlatinumGym.Core.Models.Expenses
{
    public class Expenses : DomainObject
    {
        
        public string? Description { get; set; }
        public double Value { get; set; }
        public DateTime date { get; set; }
        public bool isManager { get; set; }
        public virtual Employee.Employee? Recipient { get; set; }
    }
}
