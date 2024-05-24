﻿using PlatinumGym.Core.Models.Employee;
using PlatinumGymPro.Commands;
using PlatinumGymPro.Commands.Employee.CreditsCommands;
using PlatinumGymPro.Services;
using PlatinumGymPro.Stores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace PlatinumGymPro.ViewModels.Employee.CreditViewModels
{
    public class CreditListItemViewModel : ViewModelBase
    {
        private readonly EmployeeStore _employeeStore;
        private readonly CreditsDataStore _creditsDataStore;
        private readonly NavigationStore _navigationStore;
        private readonly CreditListViewModel _creditListViewModel;
        public Credit credit;
        public int Id => credit.Id;
        public double CreditValue => credit.CreditValue;
        public string? Date => credit.Date.ToShortDateString();
        public string? Description => credit.Description;
        public CreditListItemViewModel(Credit credit, EmployeeStore employeeStore, CreditsDataStore creditsDataStore, NavigationStore navigationStore, CreditListViewModel creditListViewModel)
        {
            this.credit = credit;
            _employeeStore = employeeStore;
            _creditsDataStore = creditsDataStore;
            _navigationStore = navigationStore;
            _creditListViewModel = creditListViewModel;
            EditCommand = new NavaigateCommand<EditCreditDetailsViewModel>(new NavigationService<EditCreditDetailsViewModel>(_navigationStore, () => new EditCreditDetailsViewModel(_employeeStore, _creditsDataStore, _navigationStore, _creditListViewModel)));
            DeleteCommand = new DeleteCreditsCommand(_creditsDataStore);
        }
        public ICommand EditCommand { get; }
        public ICommand DeleteCommand { get; }
        public void Update(Credit obj)
        {
            this.credit = obj;
        }
    }
}
