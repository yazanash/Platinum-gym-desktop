﻿using Microsoft.EntityFrameworkCore;
using NUnit.Framework;
using Platinum.Test.Fakes;
using PlatinumGym.Core.Exceptions;
using PlatinumGym.Core.Models.Sport;
using PlatinumGym.Entityframework.DbContexts;
using PlatinumGym.Entityframework.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platinum.Test.DataServices_test
{
    [TestFixture]
    public class SportDataServiceTest
    {
        PlatinumGymDbContextFactory db;
        SportFactory sportFactory;
        SportServices sportDataService;

        [OneTimeSetUp]
        public void OnetimeSetUp()
        {
            string CONNECTION_STRING = @"data source =.\sqlexpress; initial catalog = PlatinumDB_test; integrated security = SSPI; TrustServerCertificate = True; ";
            db = new PlatinumGymDbContextFactory(CONNECTION_STRING);

            using (PlatinumGymDbContext platinumGymDbContext = db.CreateDbContext())
            {
                platinumGymDbContext.Database.Migrate();
            }
            sportFactory = new();
            sportDataService = new(db!);
        }

        [OneTimeTearDown]
        public void Onetimetear()
        {

        }

        [SetUp]
        public void SetUp()
        {

        }
        [TearDown]
        public void TearDown()
        {
            using (PlatinumGymDbContext platinumGymDbContext = db.CreateDbContext())
            {
                var players = platinumGymDbContext.Players!.ToList();
                platinumGymDbContext.Players!.RemoveRange(players);
                platinumGymDbContext.SaveChanges();
                var x = platinumGymDbContext.Players!.Count();
            }
        }

        [Test]
        public async Task CreateSport()
        {
            Sport expected_sport = sportFactory.FakeSport();

            Sport actual_sport = await sportDataService.Create(expected_sport);

            Assert.AreEqual(expected_sport.Name,actual_sport.Name);
        }

        [Test]
        public async Task CreateExitingSport()
        {
            Sport expected_sport = sportFactory.FakeSport();

            Sport actual_sport = await sportDataService.Create(expected_sport);

            Assert.ThrowsAsync<SportConflictException>(
                () => sportDataService.Create(actual_sport));
        }

        //[Test]
        ///// it should get sport info and assert it informations
        //public async Task GetSport()
        //{
        //    //Arrange
        //    Sport expected_sport = sportFactory!.FakeSport();
        //    //Act
        //    Sport test_sport= await sportDataService!.Create(expected_sport);
        //    Sport actual_sport = await sportDataService.Get(test_sport.Id);
        //    //Assert
        //    Assert.AreEqual(expected_sport.Name, actual_sport.Name);
        //}

        //[Test]
        ///// it should try get not exist sport and throw exception 
        //public void GetNotExistSport()
        //{
        //    //Arrange
        //    Sport expected_sport = sportFactory!.FakeSport();
        //    //Act

        //    //Assert
        //    Assert.ThrowsAsync<NotExistException>(
        //        async () => await sportDataService!.Get(expected_sport.Id));
        //}
        //[Test]
        ///// it should update sport and assert it information updated 
        //public async Task UpdateSport()
        //{
        //    //Arrange
        //    Sport expected_sport = sportFactory!.FakeSport();
        //    //Act
        //    Sport test_sport = await sportDataService!.Create(expected_sport);
        //    Sport actual_sport = await sportDataService.Get(test_sport.Id);
        //    actual_sport.Name = "updated Name";
        //    Sport updated_sport = await sportDataService.Update(actual_sport);
        //    //Assert
        //    Assert.AreEqual(actual_sport.Name, updated_sport.Name);
        //}

        //[Test]
        ///// it should try update not exist sport and throw exception
        //public void UpdateNotExistSport()
        //{
        //    //Arrange
        //    Sport expected_sport = sportFactory!.FakeSport();
        //    //Act
        //    expected_sport.Name = "updated Name";
        //    //Assert
        //    Assert.ThrowsAsync<NotExistException>(
        //       async () => await sportDataService!.Update(expected_sport));
        //}

    }
}
