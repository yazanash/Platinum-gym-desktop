﻿using PlatinumGymPro.Commands;
using PlatinumGymPro.Commands.TrainersCommands;
using PlatinumGym.Core.Models.Employee;
using PlatinumGymPro.Services;
using PlatinumGymPro.Stores;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using PlatinumGymPro.ViewModels.PlayersViewModels;

namespace PlatinumGymPro.ViewModels.TrainersViewModels
{
    public class TrainersListViewModel : ListingViewModelBase
    {

        private readonly ObservableCollection<TrainerListItemViewModel> trainerListItemViewModels;
        private readonly ObservableCollection<FiltersItemViewModel> filtersItemViewModel;
        private NavigationStore _navigatorStore;
        private EmployeeStore _employeeStore;

        public IEnumerable<TrainerListItemViewModel> TrainerList => trainerListItemViewModels;
        public IEnumerable<FiltersItemViewModel> FiltersList => filtersItemViewModel;
        public ICommand AddTrainerCommand { get; }
        public ICommand LoadTrainerCommand { get; }
        public FiltersItemViewModel? SelectedFilter
        {
            get
            {
                return filtersItemViewModel
                    .FirstOrDefault(y => y?.Filter == _employeeStore.SelectedFilter);
            }
            set
            {
                _employeeStore.SelectedFilter = value?.Filter;

            }
        }
        public SearchBoxViewModel SearchBox { get; set; }
        public TrainersListViewModel(NavigationStore navigatorStore, EmployeeStore employeeStore)
        {
            _navigatorStore = navigatorStore;
            _employeeStore = employeeStore;
            LoadTrainerCommand = new LoadTrainersCommand(_employeeStore, this);
            AddTrainerCommand = new NavaigateCommand<AddTrainerViewModel>(new NavigationService<AddTrainerViewModel>(_navigatorStore, () => new AddTrainerViewModel(navigatorStore, this)));
            trainerListItemViewModels = new ObservableCollection<TrainerListItemViewModel>();



            _employeeStore.Loaded += _trainerStore_TrainersLoaded;
            _employeeStore.Created += _trainerStore_TrainerAdded;
            _employeeStore.Updated += _trainerStore_TrainerUpdated;
            _employeeStore.Deleted += _trainerStore_TrainerDeleted;
            SearchBox = new SearchBoxViewModel();
            SearchBox.SearchedText += SearchBox_SearchedText;


            filtersItemViewModel = new();

            filtersItemViewModel.Add(new FiltersItemViewModel(Enums.Filter.All, 1, "الكل"));
            filtersItemViewModel.Add(new FiltersItemViewModel(Enums.Filter.Trainer, 2, "المدربين"));
            filtersItemViewModel.Add(new FiltersItemViewModel(Enums.Filter.Secretary, 3, "السكرتارية"));
            filtersItemViewModel.Add(new FiltersItemViewModel(Enums.Filter.Employee, 3, "الموظفين"));

            _employeeStore.FilterChanged += _employeeStore_FilterChanged;
        }

        private void _employeeStore_FilterChanged(Enums.Filter? filter)
        {
           
            switch (filter)
            {
                case Enums.Filter.All:
                    LoadEmployees(_employeeStore.Employees);
                    break;
                case Enums.Filter.Trainer:
                    LoadEmployees(_employeeStore.Employees.Where(x => x.IsTrainer == true));
                    break;
                case Enums.Filter.Secretary:
                    LoadEmployees(_employeeStore.Employees.Where(x => x.IsSecrtaria == true));
                    break;
                case Enums.Filter.Employee:
                    LoadEmployees(_employeeStore.Employees.Where(x => x.IsSecrtaria == false&& x.IsTrainer == false));
                    break;
              

            }
        }
        void LoadEmployees(IEnumerable<Employee> employees)
        {
            trainerListItemViewModels.Clear();
          
            foreach (Employee employee in employees)
            {
                AddTrainer(employee);
            }
           

        }
        public TrainerListItemViewModel? SelectedEmployee
        {
            get
            {
                return TrainerList
                    .FirstOrDefault(y => y?.Trainer == _employeeStore.SelectedEmployee);
            }
            set
            {
                _employeeStore.SelectedEmployee = value?.Trainer;

            }
        }
        private void SearchBox_SearchedText(string? obj)
        {
            trainerListItemViewModels.Clear();

            foreach (Employee employee in _employeeStore.Employees.Where(x => x.FullName!.ToLower().Contains(obj!.ToLower())))
            {
                AddTrainer(employee);
            }
        }

        private void _trainerStore_TrainerDeleted(int id)
        {
            TrainerListItemViewModel? itemViewModel = trainerListItemViewModels.FirstOrDefault(y => y.Trainer?.Id == id);

            if (itemViewModel != null)
            {
                trainerListItemViewModels.Remove(itemViewModel);
            }
        }

        private void _trainerStore_TrainerUpdated(Employee trainer)
        {
            TrainerListItemViewModel? sportViewModel =
                  trainerListItemViewModels.FirstOrDefault(y => y.Trainer.Id == trainer.Id);

            if (sportViewModel != null)
            {
                sportViewModel.Update(trainer);
            }
        }

        private void _trainerStore_TrainerAdded(Employee trainer)
        {
            AddTrainer(trainer);
        }

        private void _trainerStore_TrainersLoaded()
        {
            trainerListItemViewModels.Clear();

            foreach (Employee trainer in _employeeStore.Employees)
            {
                AddTrainer(trainer);
            }
        }

        public override void Dispose()
        {

            _employeeStore.Loaded -= _trainerStore_TrainersLoaded;
            _employeeStore.Created -= _trainerStore_TrainerAdded;
            _employeeStore.Updated -= _trainerStore_TrainerUpdated;
            _employeeStore.Deleted -= _trainerStore_TrainerDeleted;
            base.Dispose();
        }





        private void AddTrainer(Employee trainer)
        {
            TrainerListItemViewModel itemViewModel =
                new TrainerListItemViewModel(trainer, _navigatorStore);
            trainerListItemViewModels.Add(itemViewModel);
        }
        public static TrainersListViewModel LoadViewModel(NavigationStore navigatorStore, EmployeeStore employeeStore)
        {
            TrainersListViewModel viewModel = new TrainersListViewModel(navigatorStore, employeeStore);

            viewModel.LoadTrainerCommand.Execute(null);

            return viewModel;
        }

    }
}
