﻿using Microsoft.AspNet.Identity;
using Unicepse.Core.Exceptions;
using Unicepse.Core.Models.Authentication;
using Unicepse.Core.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Unicepse.Entityframework.Services.AuthService
{
    public class AuthenticationService : IAuthenticationService
    {
        private readonly IAccountDataService<User> _accountService;
        private readonly IPasswordHasher _passwordHasher;

        public AuthenticationService(IAccountDataService<User> accountService, IPasswordHasher passwordHasher)
        {
            _accountService = accountService;
            _passwordHasher = passwordHasher;
        }

        public async Task<User> Login(string username, string password)
        {
            User storedAccount = await _accountService.GetByUsername(username);

            if (storedAccount == null)
            {
                throw new UserNotFoundException(username);
            }

            PasswordVerificationResult passwordResult = _passwordHasher.VerifyHashedPassword(storedAccount.Password, password);

            if (passwordResult != PasswordVerificationResult.Success)
            {
                throw new InvalidPasswordException(username,password);
            }

            return storedAccount;
        }

        public async Task<RegistrationResult> Register(string username, string password, string confirmPassword)
        {
            RegistrationResult result = RegistrationResult.Success;

            if (password != confirmPassword)
            {
                result = RegistrationResult.PasswordsDoNotMatch;
            }

            User emailAccount = await _accountService.GetByUsername(username);
            if (emailAccount != null)
            {
                result = RegistrationResult.EmailAlreadyExists;
            }

            User usernameAccount = await _accountService.GetByUsername(username);
            if (usernameAccount != null)
            {
                result = RegistrationResult.UsernameAlreadyExists;
            }

            if (result == RegistrationResult.Success)
            {
                string hashedPassword = _passwordHasher.HashPassword(password);

                User user = new User()
                {
                    UserName = username,
                    Password = hashedPassword,
                    IsAdmin = false
                };

                
                await _accountService.Create(user);
            }

            return result;
        }
       
    }
}
