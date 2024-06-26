﻿using Unicepse.WPF.Stores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Unicepse.WPF.Commands.PlayerAttendenceCommands
{
    public class GetPlayerLoggingCommand : AsyncCommandBase
    {
        private readonly PlayersAttendenceStore _playersAttendenceStore;
        private readonly PlayersDataStore _playersDataStore;

        public GetPlayerLoggingCommand(PlayersAttendenceStore playersAttendenceStore, PlayersDataStore playersDataStore)
        {
            _playersAttendenceStore = playersAttendenceStore;
            _playersDataStore = playersDataStore;
        }

        public override async Task ExecuteAsync(object? parameter)
        {
           
            await _playersAttendenceStore.GetPlayerLogging(_playersDataStore.SelectedPlayer!.Player.Id);
        }
    }
}
