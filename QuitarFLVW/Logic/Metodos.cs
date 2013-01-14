using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using QuitarFLVW.Data;

namespace QuitarFLVW.Logic
{
    public class Metodos
    {
        public static bool DoMission()
        {
            var FechaHoy = DateTime.Now;
            SessionDBDataContext db = new SessionDBDataContext();

            try
            {
                var ConsultaSiYaEntreno = (from t in db.tbl_Trainings
                                           where t.User_ID == 6
                                           && t.Train_Date.Month == FechaHoy.Month
                                           && t.Train_Date.Day == FechaHoy.Day
                                           && t.Train_Date.Year == FechaHoy.Year
                                           select t.Train_Date).Single();
                return false;
            }
            catch(Exception){}
            var PuntosGanados = (from u in db.tbl_USERs
                                 where u.Usr_id == 6
                                     select u).ToList().Single();
            int totalSesiones = Convert.ToInt32(PuntosGanados.Usr_TotalTrainingSessions);

            if (totalSesiones <= 21)
            {
                PuntosGanados.Usr_Strength += 20;
                PuntosGanados.Usr_TotalTrainingSessions = PuntosGanados.Usr_TotalTrainingSessions + 1;
            }
            else if (totalSesiones >= 22 && totalSesiones <= 60)
            {
                PuntosGanados.Usr_Strength += +10;
                PuntosGanados.Usr_TotalTrainingSessions = PuntosGanados.Usr_TotalTrainingSessions + 1;
            }
            else if (totalSesiones >= 61 && totalSesiones <= 141)
            {
                PuntosGanados.Usr_Strength += 5;
                PuntosGanados.Usr_TotalTrainingSessions = PuntosGanados.Usr_TotalTrainingSessions + 1;
            }
            else if (totalSesiones >= 141)
            {
                PuntosGanados.Usr_Strength += 2;
                PuntosGanados.Usr_TotalTrainingSessions = PuntosGanados.Usr_TotalTrainingSessions + 1;
            }
            PuntosGanados.Usr_Experience += 2;

            tbl_Training tra = new tbl_Training();
            tra.User_ID = 6;
            tra.Train_Date = DateTime.Now;

            db.tbl_Trainings.InsertOnSubmit(tra);
            db.SubmitChanges();
            return true;
        }

        public static bool Work()
        {
            var FechaHoy = DateTime.Now;
            SessionDBDataContext dbWsim = new SessionDBDataContext();

            try
            {
                var ConsultaSiYaTrabajo = (from t in dbWsim.tbl_Workdays
                                           where t.User_ID == 6
                                           && t.Workday_Date.Month == FechaHoy.Month
                                           && t.Workday_Date.Day == FechaHoy.Day
                                           && t.Workday_Date.Year == FechaHoy.Year
                                           select t.Workday_Date).Single();
                return false;
            }
            catch (Exception) { }
            

            var userInfo = (from t in dbWsim.View_UserInfos
                                       where t.User_ID == 6
                                       select t).Single();

            var insertBank = (from t in dbWsim.tbl_Banks
                               where t.User_ID == userInfo.User_ID
                               select t).Single();
            insertBank.Mny_ID = Convert.ToInt32(userInfo.MnyTypeCountryID);
            insertBank.Bank_Quantity += userInfo.Salary;

            var insertUsers = (from t in dbWsim.tbl_USERs
                            where t.Usr_id == userInfo.User_ID
                            select t).Single();
            insertUsers.Usr_Experience += 2;
           

            tbl_Workday insertWorkDay = new tbl_Workday();
            insertWorkDay.Company_ID = userInfo.Compny_ID;
            insertWorkDay.User_ID = userInfo.User_ID;
            insertWorkDay.Workday_Date = FechaHoy;


            int consultCuantasVecesTrabajado = (from t in dbWsim.tbl_Workdays
                                                where t.User_ID == 6
                                                select t).Count();
            switch (consultCuantasVecesTrabajado)
            {
                case 0: 
                    userInfo.Usr_EconomySkill = 1;
                    userInfo.Usr_TitleJob = "Assistant";
                    break;
                case 2: 
                    userInfo.Usr_EconomySkill = 2;
                    userInfo.Usr_TitleJob = "Junior";
                    break;
                case 4: 
                    userInfo.Usr_EconomySkill = 3;
                    userInfo.Usr_TitleJob = "Senior";
                    break;
                case 15: 
                    userInfo.Usr_EconomySkill = 4;
                    userInfo.Usr_TitleJob = "Coordinator";
                    break;
                case 23: 
                    userInfo.Usr_EconomySkill = 5;
                    userInfo.Usr_TitleJob = "Specialist";
                    break;
                case 32: 
                    userInfo.Usr_EconomySkill = 6;
                    userInfo.Usr_TitleJob = "Expert";
                    break;
                case 54: 
                    userInfo.Usr_EconomySkill = 7;
                    userInfo.Usr_TitleJob = "Master";
                    break;
                case 95: 
                    userInfo.Usr_EconomySkill = 8;
                    userInfo.Usr_TitleJob = "Guru";
                    break;
                case 168: 
                    userInfo.Usr_EconomySkill = 9;
                    userInfo.Usr_TitleJob = "Guru *";
                    break;
                default:

                    break;
            }

            dbWsim.tbl_USERs.InsertOnSubmit(insertUsers);
            dbWsim.View_UserInfos.InsertOnSubmit(userInfo);
            dbWsim.tbl_Workdays.InsertOnSubmit(insertWorkDay);
            dbWsim.SubmitChanges();
            return false;
        }
    }
}