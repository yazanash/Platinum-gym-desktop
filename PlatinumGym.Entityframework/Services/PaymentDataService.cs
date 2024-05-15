﻿using PlatinumGym.Core.Services;
using PlatinumGym.Core.Models.Payment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PlatinumGym.Entityframework.DbContexts;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using PlatinumGym.Core.Exceptions;
using Microsoft.EntityFrameworkCore;
using PlatinumGym.Core.Models.Player;
using PlatinumGym.Core.Models.Employee;

namespace PlatinumGym.Entityframework.Services
{
    public class PaymentDataService : IDataService<PlayerPayment>
    {
        private readonly PlatinumGymDbContextFactory _contextFactory;

        public PaymentDataService(PlatinumGymDbContextFactory contextFactory)
        {
            _contextFactory = contextFactory;
        }

        public async Task<PlayerPayment> Create(PlayerPayment entity)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            context.Attach(entity.Subscription!);
            //context.Attach(entity.Subscription!.Player!);
            //context.tity.Player!);
            double dayPrice = entity.Subscription!.PriceAfterOffer / entity.Subscription!.DaysCount;
            entity.CoverDays = (int)(entity.PaymentValue / dayPrice);
            entity.To = entity.From.AddDays(entity.CoverDays);
            EntityEntry<PlayerPayment> CreatedResult = await context.Set<PlayerPayment>().AddAsync(entity);
            await context.SaveChangesAsync();
            return CreatedResult.Entity;
        }

        public async Task<bool> Delete(int id)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            PlayerPayment? entity = await context.Set<PlayerPayment>().FirstOrDefaultAsync((e) => e.Id == id);
            if (entity == null)
                throw new NotExistException();
            context.Set<PlayerPayment>().Remove(entity!);
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<PlayerPayment> Get(int id)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            PlayerPayment? entity = await context.Set<PlayerPayment>().Include(x=>x.Player).AsNoTracking()
                .Include(x=>x.Subscription).AsNoTracking().FirstOrDefaultAsync((e) => e.Id == id);
            if (entity == null)
                throw new NotExistException();
            return entity!;
        }

        public async Task<IEnumerable<PlayerPayment>> GetAll()
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                IEnumerable<PlayerPayment>? entities = await context.Set<PlayerPayment>().Include(x => x.Player).AsNoTracking()
                    .Include(x=>x.Subscription).AsNoTracking()
                    .ToListAsync();
                return entities;
            }
        }
        public async Task<IEnumerable<PlayerPayment>> GetAll(DateTime dateFrom, DateTime dateTo)
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                IEnumerable<PlayerPayment>? entities = await context.Set<PlayerPayment>().Include(x => x.Player).AsNoTracking()
                    .Include(x => x.Subscription).Include(x=>x.Subscription!.Sport).Include(x=>x.Subscription!.Trainer).AsNoTracking().Where(x=>x.PayDate>=dateFrom&&x.PayDate<=dateTo)
                    .ToListAsync();
                return entities;
            }
        }
        public async Task<IEnumerable<PlayerPayment>> GetPlayerPayments(Player player)
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                IEnumerable<PlayerPayment>? entities = await context.Set<PlayerPayment>().Include(x => x.Player).AsNoTracking()
                    .Include(x => x.Subscription).AsNoTracking().Include(x=>x.Subscription!.Sport).AsNoTracking().Include(x => x.Subscription!.Trainer).AsNoTracking().Where(x => x.Player!.Id == player.Id).AsNoTracking()
                    .ToListAsync();
                return entities;
            }
        }
        public async Task<IEnumerable<PlayerPayment>> GetTrainerPayments(Employee trainer,DateTime date)
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                IEnumerable<PlayerPayment>? entities = await context.Set<PlayerPayment>().Include(x => x.Player).AsNoTracking()
                    .Include(x => x.Subscription).AsNoTracking()
                    .Include(x => x.Subscription!.Sport).AsNoTracking()
                    .Include(x => x.Subscription!.Trainer).AsNoTracking()
                    .Where(x => x.Subscription!.Trainer!.Id == trainer.Id &&
                    ( 
                    x.PayDate.Month==date.Month &&x.PayDate.Year==date.Year ||
                    x.To.Month == date.Month && x.To.Year == date.Year
                    )
                    ).AsNoTracking()
                    .ToListAsync();
                return entities;
            }
        }

        public async Task<Employee> GetPreviousTrainer(int id)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            Employee? entity = await context.Set<Employee>().AsNoTracking().FirstOrDefaultAsync((e) => e.Id == id);
            if (entity == null)
                throw new NotExistException();
            return entity!;
        }
        public async Task<PlayerPayment> Update(PlayerPayment entity)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            PlayerPayment existed_payment = await Get(entity.Id);
            if (existed_payment == null)
                throw new NotExistException();
            context.Set<PlayerPayment>().Update(entity);
            await context.SaveChangesAsync();
            return entity;
        }
    }
}
