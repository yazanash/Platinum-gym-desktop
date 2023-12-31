﻿using PlatinumGymPro.Commands;
using PlatinumGymPro.Commands.SportsCommands;
using PlatinumGymPro.Commands.TrainersCommands;
using PlatinumGym.Core.Models.Employee;
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
    public class AddSportViewModel : ViewModelBase
    {
        private readonly NavigationStore _navigationStore;
        //private readonly SportStore _sportStore;
        //private readonly TrainerStore _trainerStore;
        private readonly ObservableCollection<TrainersListItemViewModel> trainerListItemViewModels;
        public IEnumerable<TrainersListItemViewModel> TrainerList => trainerListItemViewModels;
        public AddSportViewModel(NavigationStore navigationStore, SportListViewModel sportListViewModel)
        {
            _navigationStore = navigationStore;
            //_sportStore = sportStore;
            //_trainerStore = trainerStore;
            CancelCommand = new NavaigateCommand<SportListViewModel>(new NavigationService<SportListViewModel>(_navigationStore, () => sportListViewModel));
            this.SubmitCommand = new SubmitSportCommand(new NavigationService<SportListViewModel>(_navigationStore, () => sportListViewModel), this);
            //LoadTrainersCommand = new LoadTrainersForSportCommand(_trainerStore,this);
            PropertyNameToErrorsDictionary = new Dictionary<string, List<string>>();
            trainerListItemViewModels = new ObservableCollection<TrainersListItemViewModel>();
            //_trainerStore.TrainersLoaded += _trainerStore_TrainersLoaded;
        }

      

        private void _trainerStore_TrainersLoaded()
        {
            trainerListItemViewModels.Clear();

            //foreach (Employee trainer in _trainerStore.Trainer)
            //{
            //    AddTrainer(trainer);
            //}
        }
        private void AddTrainer(Employee trainer)
        {
            //TrainersListItemViewModel itemViewModel =
            //    new TrainersListItemViewModel(trainer);
            //trainerListItemViewModels.Add(itemViewModel);
        }
        private bool _isLoading;
        public bool IsLoading
        {
            get
            {
                return _isLoading;
            }
            set
            {
                _isLoading = value;
                OnPropertyChanged(nameof(IsLoading));
            }
        }

        private string? _errorMessage;
        public string? ErrorMessage
        {
            get
            {
                return _errorMessage;
            }
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
                OnPropertyChanged(nameof(HasErrorMessage));
            }
        }

        public bool HasErrorMessage => !string.IsNullOrEmpty(ErrorMessage);


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
                //ClearError(nameof(Phone));
                //if (Phone?.Trim().Length < 10)
                //{
                //    AddError("يجب ان يكون رقم الهاتف 10 ارقام", nameof(Phone));
                //    OnErrorChanged(nameof(Phone));
                //}

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

        private int _dailyPrice;
        public int DailyPrice
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
        public static AddSportViewModel LoadViewModel( NavigationStore navigatorStore, SportListViewModel sportListViewModel )
        {
            AddSportViewModel viewModel = new AddSportViewModel(navigatorStore, sportListViewModel);

            viewModel.LoadTrainersCommand.Execute(null);

            return viewModel;
        }
    }
}
