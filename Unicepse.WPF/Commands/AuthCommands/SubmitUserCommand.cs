﻿using Unicepse.Core.Models.Authentication;
using Unicepse.WPF.Stores;
using Unicepse.WPF.ViewModels.Authentication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Unicepse.WPF.navigation;

namespace Unicepse.WPF.Commands.AuthCommands
{
    public class SubmitUserCommand : AsyncCommandBase
    {
        private readonly UsersDataStore _usersDataStore;
        private NavigationService<UsersListViewModel> _navigationService;
        private AddUserViewModel _addUserViewModel;
        public SubmitUserCommand(UsersDataStore usersDataStore, NavigationService<UsersListViewModel> navigationService, AddUserViewModel addUserViewModel)
        {
            _usersDataStore = usersDataStore;
            _navigationService = navigationService;
            _addUserViewModel = addUserViewModel;
        }

        public override async Task ExecuteAsync(object? parameter)
        {
            User user = new User()
            {
                Employee = _usersDataStore.SelectedEmployee,
                UserName = _addUserViewModel.UserName,
                Password = _addUserViewModel.Password,

            };
            await _usersDataStore.Add(user);
            _navigationService.ReNavigate();
        }
    }
}
