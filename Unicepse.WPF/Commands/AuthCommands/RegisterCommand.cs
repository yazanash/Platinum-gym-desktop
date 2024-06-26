﻿using Unicepse.Entityframework.Services.AuthService;
using Unicepse.WPF.Stores;
using Unicepse.WPF.ViewModels.Authentication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Unicepse.WPF.Commands.AuthCommands
{
    public class RegisterCommand : AsyncCommandBase
    {
        private readonly AuthViewModel _authViewModel;
        private readonly AuthenticationStore _authenticationStore;
        private readonly RegisterViewModel _registerViewModel;

        public RegisterCommand(AuthViewModel authViewModel, AuthenticationStore authenticationStore, RegisterViewModel registerViewModel)
        {
            _authViewModel = authViewModel;
            _authenticationStore = authenticationStore;
            _registerViewModel = registerViewModel;
        }

        public async override Task ExecuteAsync(object? parameter)
        {

            RegistrationResult result = await _authenticationStore.Register(_registerViewModel.UserName!,
                 _registerViewModel.Password!, _registerViewModel.PasswordConfirm!);
            if (result == RegistrationResult.Success)
                _authViewModel.OnLoginAction();
        }
    }
}
