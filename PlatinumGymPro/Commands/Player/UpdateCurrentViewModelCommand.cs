﻿using PlatinumGymPro.Services;
using PlatinumGymPro.State.Navigator;
using PlatinumGymPro.Stores;
using PlatinumGymPro.Stores.PlayerStores;
using PlatinumGymPro.ViewModels;
using PlatinumGymPro.ViewModels.PlayersViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace PlatinumGymPro.Commands
{
    public class UpdateCurrentViewModelCommand : CommandBase
    {
        public INavigator _navigator;
        private readonly PlayersDataStore _playersStore;
        private readonly SportDataStore _sportStore;
        private readonly EmployeeStore _employeeStore;
        public UpdateCurrentViewModelCommand(INavigator navigator, PlayersDataStore playersStore,
            SportDataStore sportStore, EmployeeStore employeeStore)
        {
            _navigator = navigator;
            _playersStore = playersStore;
            _sportStore = sportStore;
            _employeeStore = employeeStore;
        }

        public override void Execute(object? parameter)
        {
            if(parameter is ViewType)
            {
                NavigationStore navigator = new NavigationStore();
                ViewType viewType = (ViewType)parameter;
                switch (viewType)
                {
                    case ViewType.Home:
                        _navigator.CurrentViewModel =new HomeViewModel();
                        break;
                    case ViewType.Players:
                        _navigator.CurrentViewModel = new PlayersPageViewModel(navigator, _playersStore);
                        break;
                    case ViewType.Sport:
                        _navigator.CurrentViewModel = new SportsViewModel(navigator,_sportStore);
                        break;
                    case ViewType.Trainer:
                        _navigator.CurrentViewModel = new TrainersViewModel(navigator,_employeeStore);
                        break;
                    case ViewType.Gym:
                        _navigator.CurrentViewModel = new GymViewModel();
                        break;
                    case ViewType.Accounting:
                        _navigator.CurrentViewModel = new AccountingViewModel();
                        break;
                    default:
                        break;
                }
                
            }
        }
      
    }
}