﻿using PlatinumGymPro.Stores;
using PlatinumGymPro.ViewModels;
using PlatinumGymPro.ViewModels.SportsViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGymPro.Commands.SportsCommands
{
    public class LoadTrainersForSportCommand : AsyncCommandBase
    {
        private readonly EmployeeStore _trainerStore;
        private readonly ListingViewModelBase _addSportViewModel;
        public LoadTrainersForSportCommand(EmployeeStore trainerStore, ListingViewModelBase addSportViewModel)
        {
            _trainerStore = trainerStore;
            _addSportViewModel = addSportViewModel;
        }
        public override async Task ExecuteAsync(object? parameter)
        {
            _addSportViewModel.ErrorMessage = null;
            _addSportViewModel.IsLoading = true;

            try
            {
                await _trainerStore.GetAll();
            }
            catch (Exception)
            {
                _addSportViewModel.ErrorMessage = "Failed to load YouTube viewers. Please restart the application.";
            }
            finally
            {
                _addSportViewModel.IsLoading = false;
            }
        }
    }
}
