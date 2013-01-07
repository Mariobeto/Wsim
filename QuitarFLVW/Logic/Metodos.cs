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
            tra.User_ID = 1;
            tra.Train_Date = DateTime.Now;

            db.tbl_Trainings.InsertOnSubmit(tra);
            db.SubmitChanges();
            return true;
        }

        public static bool Work()
        {
            var FechaHoy = DateTime.Now;
            SessionDBDataContext db = new SessionDBDataContext();

            try
            {
                var ConsultaSiYaTrabajo = (from t in db.tbl_Workdays
                                           where t.User_ID == 6
                                           && t.Workday_Date.Month == FechaHoy.Month
                                           && t.Workday_Date.Day == FechaHoy.Day
                                           && t.Workday_Date.Year == FechaHoy.Year
                                           select t.Workday_Date).Single();
                return false;
            }
            catch (Exception) { }
            //El salario de la compañia en la que trabaja
            var ConsultaSalarioCompny = (from t in db.tbl_Workers
                                      where t.User_ID == 6
                                      select t).Single();
            //Se consulta la compañia en la que trabaja
            var CmnyEnLaqTrabaja = (from t in db.tbl_Companies
                           where t.Compny_ID == ConsultaSalarioCompny.Compny_ID
                                   select t).Single();

            //Se le va a pagar su salario 
            var Pagar = (from t in db.tbl_Banks
                         where t.User_ID == 6
                         && t.Mny_ID == CmnyEnLaqTrabaja.Country_ID
                         select t).Single();
            Pagar.Bank_Quantity += ConsultaSalarioCompny.Salary;


            var Usuario = (from t in db.tbl_USERs
                                       where t.Usr_id == 6
                                       select t).Single();
            Usuario.Usr_Experience += 5;


            return false;
        }
    }
}