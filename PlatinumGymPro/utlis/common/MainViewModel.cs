﻿//using PlatinumGymPro.Models;
using PlatinumGymPro.State.Navigator;
using PlatinumGymPro.Stores;
using PlatinumGymPro.Stores.PlayerStores;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace PlatinumGymPro.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
       
        public INavigator Navigator { get; set; }
        //private readonly NavigationStore _navigationStore;
        public NavigationStore _navigatorStore;
        private readonly PlayersDataStore _playerStore;
        private readonly SportDataStore _sportStore;
        public MainViewModel(NavigationStore navigatorStore, PlayersDataStore playerStore, SportDataStore sportStore)
        {
            _navigatorStore = navigatorStore;
            _playerStore = playerStore;
            _sportStore = sportStore;
            Navigator = new Navigator(_navigatorStore, _playerStore , _sportStore);
            Navigator.CurrentViewModel = new HomeViewModel();

            //_navigationStore.CurrentViewModelChanged += NavigationStore_CurrentViewModelChanged;
        }

        //private void NavigationStore_CurrentViewModelChanged()
        //{
        //    OnPropertyChanged(nameof(CurrentViewModel));
        //}

        //public ViewModelBase? CurrentViewModel =>_navigationStore.CurrentViewModel;

    }
}
