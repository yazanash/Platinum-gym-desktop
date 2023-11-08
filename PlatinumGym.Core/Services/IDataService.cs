﻿using PlatinumGym.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGym.Core.Services
{
    public interface IDataService<T> 
    {
        Task<IEnumerable<T>> GetAll();
        Task<IEnumerable<T>> GetByFilterAll(Filter filter);
        Task<T> Get(int id);
        Task<T> Create(T entity);
        Task<T> Update(T entity);
        Task<bool> Delete(int id);
        Task<T> CheckIfExistByName(string name);
    }
}
