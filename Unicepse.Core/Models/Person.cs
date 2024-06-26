﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Unicepse.Core.Models
{
    public abstract class Person : DomainObject
    {
        public string? FullName { get; set; }
        public string? Phone { get; set; }
        public int BirthDate { get; set; }
        public bool GenderMale { get; set; }
    }
}
