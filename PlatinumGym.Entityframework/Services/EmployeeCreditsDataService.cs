﻿using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using PlatinumGym.Core.Exceptions;
using PlatinumGym.Core.Models.Employee;
using PlatinumGym.Core.Services;
using PlatinumGym.Entityframework.DbContexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGym.Entityframework.Services
{
    public class EmployeeCreditsDataService : IDataService<Credit>
    {
        private readonly PlatinumGymDbContextFactory _contextFactory;

        public EmployeeCreditsDataService(PlatinumGymDbContextFactory contextFactory)
        {
            _contextFactory = contextFactory;
        }

        public async Task<Credit> Create(Credit entity)
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                EntityEntry<Credit> CreatedResult = await context.Set<Credit>().AddAsync(entity);
                await context.SaveChangesAsync();
                return CreatedResult.Entity;
            }
        }

        public async Task<bool> Delete(int id)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            Credit? entity = await context.Set<Credit>().FirstOrDefaultAsync((e) => e.Id == id);
            if (entity == null)
                throw new NotExistException();
            context.Set<Credit>().Remove(entity!);
            await context.SaveChangesAsync();
            return true;
        }

        public async Task<IEnumerable<Credit>> GetAll(Employee trainer)
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                IEnumerable<Credit>? entities = await context.Set<Credit>().AsNoTracking().Where(x=>x.EmpPerson!.Id==trainer.Id).ToListAsync();
                return entities;
            }
        }
        public async Task<IEnumerable<Credit>> GetAll(Employee trainer, DateTime date)
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                IEnumerable<Credit>? entities = await context.Set<Credit>().AsNoTracking().Where(x => x.EmpPerson!.Id == trainer.Id&& x.Date.Year==date.Year&&x.Date.Month==date.Month).ToListAsync();
                return entities;
            }
        }
        public async Task<Credit> Get(int id)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            Credit? entity = await context.Set<Credit>().AsNoTracking().FirstOrDefaultAsync((e) => e.Id == id);
            if (entity == null)
                throw new NotExistException();
            return entity!;
        }

        public async Task<IEnumerable<Credit>> GetAll()
        {
            using (PlatinumGymDbContext context = _contextFactory.CreateDbContext())
            {
                IEnumerable<Credit>? entities = await context.Set<Credit>().AsNoTracking().AsNoTracking().ToListAsync();
                return entities;
            }
        }

        public async Task<Credit> Update(Credit entity)
        {
            using PlatinumGymDbContext context = _contextFactory.CreateDbContext();
            Credit existed_employee = await Get(entity.Id);
            if (existed_employee == null)
                throw new NotExistException();
            context.Set<Credit>().Update(entity);
            await context.SaveChangesAsync();
            return entity;
        }
    }
}
