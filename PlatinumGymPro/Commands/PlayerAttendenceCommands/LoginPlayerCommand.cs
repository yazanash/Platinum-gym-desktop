﻿using PlatinumGym.Core.Models.DailyActivity;
using PlatinumGymPro.Stores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGymPro.Commands.PlayerAttendenceCommands
{
    public class LoginPlayerCommand : AsyncCommandBase
    {
        private readonly PlayersAttendenceStore _playersAttendenceStore;
        private readonly PlayersDataStore _playersDataStore;

        public LoginPlayerCommand(PlayersAttendenceStore playersAttendenceStore, PlayersDataStore playersDataStore)
        {
            _playersAttendenceStore = playersAttendenceStore;
            _playersDataStore = playersDataStore;
        }

        public override async Task ExecuteAsync(object? parameter)
        {
            DailyPlayerReport dailyPlayerReport = new DailyPlayerReport()
            {
                loginTime = DateTime.Now,
                logoutTime = DateTime.Now,
                Date = DateTime.Now,
                IsLogged = true,
                Player = _playersDataStore.SelectedPlayer!.Player,
                
            };
            await _playersAttendenceStore.LogInPlayer(dailyPlayerReport);
        }
    }
}
