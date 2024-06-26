﻿using Unicepse.WPF.Stores;
using Unicepse.WPF.ViewModels.Employee.DausesViewModels;
using Unicepse.WPF.ViewModels.Employee.TrainersViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Unicepse.WPF.Commands.Employee
{
    public class LoadTrainerMonthlyReport : AsyncCommandBase
    {
        private readonly DausesDataStore _dausesDataStore;
        private readonly EmployeeStore _employeeStore;
        private readonly EmployeeAccountantPageViewModel _trainerDausesListViewModel;

        public LoadTrainerMonthlyReport(DausesDataStore dausesDataStore, EmployeeStore employeeStore, EmployeeAccountantPageViewModel trainerDausesListViewModel)
        {
            _dausesDataStore = dausesDataStore;
            _trainerDausesListViewModel = trainerDausesListViewModel;
            _employeeStore = employeeStore;
        }

        public async override Task ExecuteAsync(object? parameter)
        {
            await _dausesDataStore.GetMonthlyReport(_employeeStore.SelectedEmployee!, _trainerDausesListViewModel.ReportDate);
        }
    }
}
