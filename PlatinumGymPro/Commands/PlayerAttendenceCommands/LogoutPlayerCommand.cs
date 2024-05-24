﻿using PlatinumGym.Core.Models.DailyActivity;
using PlatinumGymPro.Stores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlatinumGymPro.Commands.PlayerAttendenceCommands
{
    public class LogoutPlayerCommand : AsyncCommandBase
    {
        private readonly PlayersAttendenceStore _playersAttendenceStore;

        public LogoutPlayerCommand(PlayersAttendenceStore playersAttendenceStore)
        {
            _playersAttendenceStore = playersAttendenceStore;
        }

        public override async Task ExecuteAsync(object? parameter)
        {
            _playersAttendenceStore.SelectedDailyPlayerReport!.logoutTime = DateTime.Now;
            _playersAttendenceStore.SelectedDailyPlayerReport!.IsLogged = false;
            await _playersAttendenceStore.LogOutPlayer(_playersAttendenceStore.SelectedDailyPlayerReport!);
        }
    }
}
