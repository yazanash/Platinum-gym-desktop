﻿using PlatinumGym.Core.Models.Employee;
using PlatinumGymPro.Commands;
using PlatinumGymPro.Commands.Sport;
using PlatinumGymPro.Commands.SportsCommands;
using PlatinumGymPro.Services;
using PlatinumGymPro.Stores;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace PlatinumGymPro.ViewModels.SportsViewModels
{
    public class EditSportViewModel : ListingViewModelBase
    {
        private readonly NavigationStore _navigationStore;
        private readonly SportDataStore _sportStore;
        private readonly EmployeeStore _trainerStore;
        private readonly ObservableCollection<TrainersListItemViewModel> trainerListItemViewModels;
        public IEnumerable<TrainersListItemViewModel> TrainerList => trainerListItemViewModels;
        public EditSportViewModel(NavigationStore navigationStore, SportListViewModel sportListViewModel, SportDataStore sportStore, EmployeeStore trainerStore)
        {
            _navigationStore = navigationStore;
            _sportStore = sportStore;
            _trainerStore = trainerStore;
            CancelCommand = new NavaigateCommand<SportListViewModel>(new NavigationService<SportListViewModel>(_navigationStore, () => sportListViewModel));
            this.SubmitCommand = new EditSportCommand(new NavigationService<SportListViewModel>(_navigationStore, () => sportListViewModel), this, _sportStore);
            LoadTrainersCommand = new LoadTrainersForSportCommand(_trainerStore, this);
            PropertyNameToErrorsDictionary = new Dictionary<string, List<string>>();
            trainerListItemViewModels = new ObservableCollection<TrainersListItemViewModel>();
            _sportStore = sportStore;
            _trainerStore = trainerStore;
            _trainerStore.Loaded += _trainerStore_TrainersLoaded;

            SportName = _sportStore.SelectedSport!.Name;
            DailyPrice=_sportStore.SelectedSport!.DailyPrice;
            SubscribeLength=_sportStore.SelectedSport!.DaysCount;
            WeeklyTrainingDays=_sportStore.SelectedSport!.DaysInWeek;
            MonthlyPrice=_sportStore.SelectedSport!.Price;
        }



        private void _trainerStore_TrainersLoaded()
        {
            trainerListItemViewModels.Clear();

            foreach (Employee trainer in _trainerStore.Employees.Where(x => x.IsTrainer))
            {
               
                    AddTrainer(trainer);
               
                 
            }
            foreach(var t in _sportStore.SelectedSport!.Trainers!)
            {
                TrainerList.SingleOrDefault(x=>x.trainer.Id==t.Id)!.IsSelected= true;
            }
        }
        private void AddTrainer(Employee trainer)
        {
            
            TrainersListItemViewModel itemViewModel =
                new TrainersListItemViewModel(trainer);
            if (_sportStore.SelectedSport!.Trainers!.Where(x => x.Id == trainer.Id).Any())
                itemViewModel.IsSelected = true;
                trainerListItemViewModels.Add(itemViewModel);
        }
        
        public int Id { get; }

        private string? _sportName;
        public string? SportName
        {
            get { return _sportName; }
            set
            {
                _sportName = value;
                OnPropertyChanged(nameof(SportName));
            }
        }
        private double _monthlyPrice;
        public double MonthlyPrice
        {
            get { return _monthlyPrice; }
            set
            {
                _monthlyPrice = value; OnPropertyChanged(nameof(MonthlyPrice));

            }
        }

        private void AddError(string? ErrorMsg, string? propertyName)
        {
            if (!PropertyNameToErrorsDictionary.ContainsKey(propertyName!))
            {
                PropertyNameToErrorsDictionary.Add(propertyName!, new List<string>());

            }
            PropertyNameToErrorsDictionary[propertyName!].Add(ErrorMsg!);
            OnErrorChanged(propertyName);
        }

        private void ClearError(string? propertyName)
        {
            PropertyNameToErrorsDictionary.Remove(propertyName!);
            OnErrorChanged(propertyName);
        }

        private void OnErrorChanged(string? PropertyName)
        {
            ErrorsChanged?.Invoke(this, new DataErrorsChangedEventArgs(PropertyName));
        }

        private double _dailyPrice;
        public double DailyPrice
        {
            get { return _dailyPrice; }
            set { _dailyPrice = value; OnPropertyChanged(nameof(DailyPrice)); }
        }
        private int _weeklyTrainingDays;
        public int WeeklyTrainingDays
        {
            get { return _weeklyTrainingDays; }
            set { _weeklyTrainingDays = value; OnPropertyChanged(nameof(WeeklyTrainingDays)); }
        }
        private int _subscribeLength;
        public int SubscribeLength
        {
            get { return _subscribeLength; }
            set { _subscribeLength = value; OnPropertyChanged(nameof(SubscribeLength)); }
        }
        public ICommand? SubmitCommand { get; }
        public ICommand? CancelCommand { get; }
        public ICommand LoadTrainersCommand { get; }

        public readonly Dictionary<string, List<string>> PropertyNameToErrorsDictionary;
        public event EventHandler<DataErrorsChangedEventArgs>? ErrorsChanged;
        public bool HasErrors => PropertyNameToErrorsDictionary.Any();

        public IEnumerable? GetErrors(string? propertyName)
        {
            return PropertyNameToErrorsDictionary!.GetValueOrDefault(propertyName, new List<string>());
        }
        public static EditSportViewModel LoadViewModel(NavigationStore navigatorStore, SportListViewModel sportListViewModel, SportDataStore sportDataStore, EmployeeStore employeeStore)
        {
            EditSportViewModel viewModel = new EditSportViewModel(navigatorStore, sportListViewModel, sportDataStore, employeeStore);

            viewModel.LoadTrainersCommand.Execute(null);

            return viewModel;
        }
    }

}
