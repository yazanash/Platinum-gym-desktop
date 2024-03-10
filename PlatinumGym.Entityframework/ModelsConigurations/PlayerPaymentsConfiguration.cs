﻿using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PlatinumGym.Core.Models.Payment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGym.Entityframework.ModelsConigurations
{
    public class PlayerPaymentsConfiguration : IEntityTypeConfiguration<PlayerPayment>
    {
        public void Configure(EntityTypeBuilder<PlayerPayment> builder)
        {
            builder.Property(p => p.Des).HasColumnType("nvarchar(4000)");
        }
    }
}
