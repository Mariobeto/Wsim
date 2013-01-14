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

        public static string Work()
        {
            var FechaHoy = DateTime.Now;
            SessionDBDataContext dbWsim = new SessionDBDataContext();

            try
            {
                var ConsultaSiYaTrabajo = (from t in dbWsim.tbl_Workdays
                                           where t.User_ID == 8
                                           && t.Workday_Date.Month == FechaHoy.Month
                                           && t.Workday_Date.Day == FechaHoy.Day
                                           && t.Workday_Date.Year == FechaHoy.Year
                                           select t.Workday_Date).Single();
                return "Ya trabajo por el dia de hoy comandante, se puede trabajar 1 vez cada 24 horas";
            }
            catch (Exception) { }
            

            var userInfo = (from t in dbWsim.View_UserInfos
                                       where t.User_ID == 8
                                      select t).Single();
            int cantidadProducir = 0;

            switch (userInfo.Usr_EconomySkill)
            {
                case 1:
                    cantidadProducir = 100;
                    break;
                case 2:
                    cantidadProducir = 120;
                    break;
                case 3:
                    cantidadProducir = 140;
                    break;
                case 4:
                    cantidadProducir = 160;
                    break;
                case 5:
                    cantidadProducir = 180;
                    break;
                case 6:
                    cantidadProducir = 200;
                    break;
                case 7:
                    cantidadProducir = 220;
                    break;
                case 8:
                    cantidadProducir = 240;
                    break;
                case 9:
                    cantidadProducir = 260;
                    break;
                default:
                    cantidadProducir = 100;
                    break;
            }
           
            //Se resta el raw de la tabla inventarios que se cambia por el item  a producir
            try
            {
                var restRaw = (from r in dbWsim.tbl_Inventories
                               where r.User_ID == userInfo.User_OwnerID
                               && r.Item_ID == userInfo.ItemIDRawProduce
                               && r.Invtry_Item_Quality == userInfo.Company_Level
                               select r).Single();
                if (restRaw.Invtry_Item_Quantity > cantidadProducir)
                    restRaw.Invtry_Item_Quantity -= cantidadProducir;
                else//No tiene el raw necesario para producir el item
                    return "No tiene suficiente material de construccion";

                var produceItem = (from r in dbWsim.tbl_Inventories
                               where r.User_ID == userInfo.User_OwnerID
                               && r.Item_ID == userInfo.ItemToProduceID
                               && r.Invtry_Item_Quality == userInfo.Company_Level
                               select r).Single();
                produceItem.Invtry_Item_Quantity += cantidadProducir;

                dbWsim.SubmitChanges();
            }
            catch (Exception)
            {
                tbl_Inventory insertInvetry = new tbl_Inventory();
                insertInvetry.User_ID = userInfo.User_OwnerID;
                insertInvetry.Invtry_Item_Quantity += cantidadProducir;
                insertInvetry.Item_ID = userInfo.ItemToProduceID;
                insertInvetry.Invtry_Item_Quality = userInfo.Company_Level;
                dbWsim.tbl_Inventories.InsertOnSubmit(insertInvetry);
                dbWsim.SubmitChanges();
            }

            //El salario del empleado faltan los impuestos
            try
            {
                try
                {
                    var paysalary = (from t in dbWsim.tbl_Banks
                                     where t.User_ID == userInfo.User_OwnerID
                                     && t.Mny_ID == userInfo.MnyTypeID
                                     && t.Bank_Quantity > userInfo.Salary
                                     select t).Single();
                    paysalary.Bank_Quantity -= userInfo.Salary;
                }
                catch (Exception) { return "The company doesnt have the resources to pay your salary"; }

                var insertBank = (from t in dbWsim.tbl_Banks
                                  where t.User_ID == userInfo.User_ID
                                  && t.Mny_ID == userInfo.MnyTypeID
                                  select t).Single();
                insertBank.Bank_Quantity += userInfo.Salary;

                
            }
            catch (Exception)
            {
                tbl_Bank banc = new tbl_Bank();
                banc.Bank_Quantity = userInfo.Salary;
                banc.Mny_ID = Convert.ToInt32(userInfo.MnyTypeID);
                banc.User_ID = userInfo.User_ID;
                dbWsim.tbl_Banks.InsertOnSubmit(banc);
                dbWsim.SubmitChanges();
            }
                
            var insertUsers = (from t in dbWsim.tbl_USERs
                            where t.Usr_id == userInfo.User_ID
                            select t).Single();
            insertUsers.Usr_Experience += 2;
           

            tbl_Workday insertWorkDay = new tbl_Workday();
            insertWorkDay.Company_ID = userInfo.Compny_ID;
            insertWorkDay.User_ID = userInfo.User_ID;
            insertWorkDay.Workday_Date = FechaHoy;


            int consultCuantasVecesTrabajado = (from t in dbWsim.tbl_Workdays
                                                where t.User_ID == userInfo.User_ID
                                                select t).Count();
            switch (consultCuantasVecesTrabajado)
            {
                case 0:
                    insertUsers.Usr_EconomySkill = 1;
                    insertUsers.Usr_TitleJob = "Assistant";
                    break;
                case 2:
                    insertUsers.Usr_EconomySkill = 2;
                    insertUsers.Usr_TitleJob = "Junior";
                    break;
                case 4:
                    insertUsers.Usr_EconomySkill = 3;
                    insertUsers.Usr_TitleJob = "Senior";
                    break;
                case 15:
                    insertUsers.Usr_EconomySkill = 4;
                    insertUsers.Usr_TitleJob = "Coordinator";
                    break;
                case 23:
                    insertUsers.Usr_EconomySkill = 5;
                    insertUsers.Usr_TitleJob = "Specialist";
                    break;
                case 32:
                    insertUsers.Usr_EconomySkill = 6;
                    insertUsers.Usr_TitleJob = "Expert";
                    break;
                case 54:
                    insertUsers.Usr_EconomySkill = 7;
                    insertUsers.Usr_TitleJob = "Master";
                    break;
                case 95:
                    insertUsers.Usr_EconomySkill = 8;
                    insertUsers.Usr_TitleJob = "Guru";
                    break;
                case 168:
                    insertUsers.Usr_EconomySkill = 9;
                    insertUsers.Usr_TitleJob = "Guru *";
                    break;
                default:

                    break;
            }

            dbWsim.tbl_Workdays.InsertOnSubmit(insertWorkDay);
            dbWsim.SubmitChanges();
            return "Trabajo correctamente vuelva mañana para volver a trabajar";
        }

        public static string Login()
        {
            return null;
        }
    }
}