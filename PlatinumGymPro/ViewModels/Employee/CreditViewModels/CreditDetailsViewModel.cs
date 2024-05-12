﻿using PlatinumGymPro.Commands.Employee.CreditsCommands;
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
    public class CreditDetailsViewModel : ErrorNotifyViewModelBase
    {
        private readonly EmployeeStore _employeeStore;
        private readonly CreditsDataStore _creditDataStore;
        private NavigationStore _navigatorStore;
        private readonly CreditListViewModel _creditListViewModel;
        public CreditDetailsViewModel(EmployeeStore employeeStore, CreditsDataStore creditDataStore, NavigationStore navigatorStore, CreditListViewModel creditListViewModel)
        {
            _employeeStore = employeeStore;
            _creditDataStore = creditDataStore;
            _navigatorStore = navigatorStore;
            _creditListViewModel = creditListViewModel;
            SubmitCommand = new SubmitCreditCommand(new NavigationService<CreditListViewModel>(_navigatorStore, () => _creditListViewModel), _employeeStore, _creditDataStore,this);
        }
        private double _creditValue;
        public double CreditValue
        {
            get { return _creditValue; }
            set { _creditValue = value; OnPropertyChanged(nameof(CreditValue)); }
        }
        private DateTime _creditDate = DateTime.Now;
        public DateTime CreditDate
        {
            get { return _creditDate; }
            set { _creditDate = value; OnPropertyChanged(nameof(CreditDate)); }
        }
        private string? _description;
        public string? Description
        {
            get { return _description; }
            set { _description = value; OnPropertyChanged(nameof(Description)); }
        }
        public ICommand SubmitCommand { get; }
    }
}