﻿using PlatinumGym.Core.Models.Expenses;
using PlatinumGym.Entityframework.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGymPro.Stores
{
    public class ExpensesDataStore : IDataStore<Expenses>
    {
        public event Action<Expenses>? Created;
        public event Action<IEnumerable<Expenses>>? Loaded;
        public event Action<Expenses>? Updated;
        public event Action<bool>? Deleted;


        private readonly ExpensesDataService _expensesDataService;
        private readonly List<Expenses> _expenses;
        private readonly Lazy<Task> _initializeLazy;

        public IEnumerable<Expenses> Expenses => _expenses;

        public ExpensesDataStore(ExpensesDataService expensesDataService)
        {
            _expensesDataService = expensesDataService;
            _expenses = new List<Expenses>();
            _initializeLazy = new Lazy<Task>(Initialize);
        }


        public async Task Add(Expenses entity)
        {
            await _expensesDataService.Create(entity);
            _expenses.Add(entity);
            Created?.Invoke(entity);
        }

        public async Task Delete(int entity_id)
        {
            bool deleted = await _expensesDataService.Delete(entity_id);
            int currentIndex = _expenses.FindIndex(y => y.Id == entity_id);
            _expenses.RemoveAt(currentIndex);
            Deleted?.Invoke(deleted);
        }

        public async Task GetAll()
        {
            await _initializeLazy.Value;
        }

        public async Task Initialize()
        {
            IEnumerable<Expenses> expenses = await _expensesDataService.GetAll();
            _expenses.Clear();
            _expenses.AddRange(expenses);
        }

        public async Task Update(Expenses entity)
        {
            await _expensesDataService.Update(entity);
            int currentIndex = _expenses.FindIndex(y => y.Id == entity.Id);

            if (currentIndex != -1)
            {
                _expenses[currentIndex] = entity;
            }
            else
            {
                _expenses.Add(entity);
            }
            Updated?.Invoke(entity);
        }
    }
}