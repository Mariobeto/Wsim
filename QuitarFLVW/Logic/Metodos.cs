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
                                           where t.User_ID == 1
                                           && t.Train_Date.Month == FechaHoy.Month
                                           && t.Train_Date.Day == FechaHoy.Day
                                           && t.Train_Date.Year == FechaHoy.Year
                                           select t.Train_Date).Single();
                return false;
            }
            catch(Exception){}
            var PuntosGanados = (from u in db.tbl_USERs
                                 where u.Usr_id == 1
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
            PuntosGanados.Usr_Experience += 5;

            tbl_Training tra = new tbl_Training();
            tra.User_ID = 1;
            tra.Train_Date = DateTime.Now;

            db.tbl_Trainings.InsertOnSubmit(tra);
            db.SubmitChanges();
            return true;
        }

        public static bool Work()
        {
            return false;
        }
    }
}