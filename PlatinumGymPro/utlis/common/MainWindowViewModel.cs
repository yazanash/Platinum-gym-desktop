﻿using PlatinumGymPro.State.Navigator;
using PlatinumGymPro.Stores;
using PlatinumGymPro.Stores.PlayerStores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGymPro.ViewModels
{
    public class MainWindowViewModel :ViewModelBase
    {
        public NavigationStore _navigatorStore;
        private readonly PlayersDataStore _playerStore;
        private SportDataStore _sportStore;
        private EmployeeStore _employeeStore;
        private ExpensesDataStore _expensesStore;
        private SubscriptionDataStore _subscriptionDataStore;
        public ViewModelBase? CurrentViewModel => _navigatorStore.CurrentViewModel;

        public MainWindowViewModel(NavigationStore navigatorStore,
            PlayersDataStore playerStore, SportDataStore sportStore,
            EmployeeStore employeeStore, ExpensesDataStore expensesStore, SubscriptionDataStore subscriptionDataStore)
        {

            _navigatorStore = navigatorStore;
            _playerStore = playerStore;
            _sportStore = sportStore;
            _employeeStore = employeeStore;
            _expensesStore = expensesStore;
            _subscriptionDataStore = subscriptionDataStore;
            _navigatorStore.CurrentViewModel = new MainViewModel(_navigatorStore, _playerStore, _sportStore, _employeeStore, _expensesStore,_subscriptionDataStore);
            _navigatorStore.CurrentViewModelChanged += _navigatorStore_CurrentViewModelChanged; ;
            
        }

        private void _navigatorStore_CurrentViewModelChanged()
        {
            OnPropertyChanged(nameof(CurrentViewModel));
        }
    }
}
