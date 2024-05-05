﻿using PlatinumGym.Core.Models.Player;
using PlatinumGymPro.Commands;
using PlatinumGymPro.Commands.Player;
using PlatinumGymPro.Commands.PlayerAttendenceCommands;
using PlatinumGymPro.Commands.SubscriptionCommand;
using PlatinumGymPro.Services;
using PlatinumGymPro.Stores;
using PlatinumGymPro.Stores.PlayerStores;
using PlatinumGymPro.ViewModels.RoutineViewModels;
using PlatinumGymPro.ViewModels.SubscriptionViewModel;
using PlatinumGymPro.ViewModels.TrainingViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Media;

namespace PlatinumGymPro.ViewModels.PlayersViewModels
{
    public class PlayerListItemViewModel : ViewModelBase
    {
        public Player Player;
        private readonly NavigationStore? _navigationStore;
        private readonly SubscriptionDataStore? _subscriptionDataStore;
        private readonly PlayersDataStore _playersDataStore;
        private readonly SportDataStore? _sportDataStore;
        private readonly PaymentDataStore? _paymentDataStore;
        private readonly MetricDataStore? _metricDataStore;
        private readonly RoutineDataStore? _routineDataStore;

        private readonly PlayersAttendenceStore? _playersAttendenceStore;
        public int Id => Player.Id;
        public string? FullName => Player.FullName;
        public string? Phone => Player.Phone;
        public int BirthDate => Player.BirthDate;
        public string Gendertext => Player.GenderMale ? "ذكر" : "انثى";
        public bool GenderMale => Player.GenderMale;
        public double Weight => Player.Weight;
        public double Hieght => Player.Hieght;
        public string? SubscribeDate => Player.SubscribeDate.ToString("ddd,MMM dd,yyy");
        public string? SubscribeEndDate => Player.SubscribeEndDate.ToString("ddd,MMM dd,yyy");
        public bool IsTakenContainer => Player.IsTakenContainer;
        public int DayLeft => (int)Player.SubscribeEndDate.Subtract(DateTime.Now).TotalDays;
        public Brush IsSubscribed => Player.IsSubscribed ? Brushes.Green : Brushes.Red;
        public double Balance => Player.Balance;


        public ICommand? EditCommand { get; }
        public ICommand? DeleteCommand { get; }
        public ICommand? TrainingProgramCommand { get; }
        public ICommand? OpenProfileCommand { get; }
        public ICommand? LogInCommand { get; }
        public PlayerListItemViewModel(Player player, NavigationStore navigationStore,
            SubscriptionDataStore subscriptionDataStore, PlayersDataStore playersDataStore,
            SportDataStore sportDataStore, PaymentDataStore paymentDataStore, MetricDataStore metricDataStore, RoutineDataStore routineDataStore, PlayerListViewModel playerList)
        {
            Player = player;
            _playersDataStore = playersDataStore;
            _subscriptionDataStore = subscriptionDataStore;
            _navigationStore = navigationStore;
            _sportDataStore = sportDataStore;
            _paymentDataStore = paymentDataStore;
            _metricDataStore = metricDataStore;
            _routineDataStore = routineDataStore;

            NavigationStore PlayerMainPageNavigation = new NavigationStore();
            EditCommand = new NavaigateCommand<EditPlayerViewModel>(new NavigationService<EditPlayerViewModel>(PlayerMainPageNavigation, () => new EditPlayerViewModel(PlayerMainPageNavigation, _playersDataStore, _subscriptionDataStore, CreatePlayerMainPageViewModel(PlayerMainPageNavigation, _subscriptionDataStore, _playersDataStore, _paymentDataStore, _sportDataStore), _sportDataStore, _paymentDataStore)));
            DeleteCommand = new DeletePlayerCommand(new NavigationService<PlayerListViewModel>(_navigationStore, () => playerList), _playersDataStore);
            OpenProfileCommand = new NavaigateCommand<PlayerProfileViewModel>(new NavigationService<PlayerProfileViewModel>(_navigationStore, () => CreatePlayerProfileViewModel(PlayerMainPageNavigation, _subscriptionDataStore, _playersDataStore, _sportDataStore, _paymentDataStore, _metricDataStore, _routineDataStore)));
            TrainingProgramCommand = new NavaigateCommand<RoutinePlayerViewModels>(new NavigationService<RoutinePlayerViewModels>(_navigationStore, () => LoadRoutineViewModel(_routineDataStore, _playersDataStore, _navigationStore)));
        }
        public PlayerListItemViewModel(Player player, PlayersDataStore playersDataStore, PlayersAttendenceStore playersAttendenceStore)
        {
            Player = player;
            _playersDataStore = playersDataStore;
            _playersAttendenceStore = playersAttendenceStore;
            LogInCommand = new LoginPlayerCommand(_playersAttendenceStore,_playersDataStore);
        }
        public void Update(Player player)
        {
            this.Player = player;

            OnPropertyChanged(nameof(FullName));
        }
        private static PlayerProfileViewModel CreatePlayerProfileViewModel(NavigationStore navigatorStore, SubscriptionDataStore subscriptionDataStore, PlayersDataStore playersDataStore, SportDataStore sportDataStore, PaymentDataStore paymentDataStore, MetricDataStore _metricDataStore, RoutineDataStore routineDataStore)
        {
            //playersDataStore.SelectedPlayer = this;
            return new PlayerProfileViewModel(navigatorStore, subscriptionDataStore, playersDataStore, sportDataStore, paymentDataStore, _metricDataStore, routineDataStore);
        }
        private static PlayerMainPageViewModel CreatePlayerMainPageViewModel(NavigationStore navigatorStore, SubscriptionDataStore subscriptionDataStore, PlayersDataStore playersDataStore, PaymentDataStore paymentDataStore, SportDataStore sportDataStore)
        {
            //playersDataStore.SelectedPlayer = this
            return new PlayerMainPageViewModel(navigatorStore, subscriptionDataStore, playersDataStore, paymentDataStore, sportDataStore);
        }
        private RoutinePlayerViewModels LoadRoutineViewModel(RoutineDataStore routineDataStore, PlayersDataStore playerDataStore, NavigationStore navigationStore)
        {
            return RoutinePlayerViewModels.LoadViewModel(routineDataStore, playerDataStore, navigationStore);
        }
    }
}
