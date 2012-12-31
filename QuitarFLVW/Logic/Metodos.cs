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
                var ConsultaSiYaEntreno = (from t in db.TRAININGs
                                           where t.User_ID == 1
                                           && t.Train_Date.Month == FechaHoy.Month
                                           && t.Train_Date.Day == FechaHoy.Day
                                           && t.Train_Date.Year == FechaHoy.Year
                                           select t.Train_Date).Single();
                return false;
            }
            catch(Exception){}
            var PuntosGanados = (from u in db.USERs
                                    where u.Usr_id == 1
                                     select u).ToList();
            int totalSesiones = Convert.ToInt32(PuntosGanados[0].Usr_TotalTrainingSessions);
            
            if (totalSesiones <= 21)
            {
                PuntosGanados[0].Usr_Streng = PuntosGanados[0].Usr_Streng + 20;
                PuntosGanados[0].Usr_TotalTrainingSessions = PuntosGanados[0].Usr_TotalTrainingSessions + 1;
            }
            else if (totalSesiones >= 22 && totalSesiones <= 60)
            {
                PuntosGanados[0].Usr_Streng = PuntosGanados[0].Usr_Streng + 10;
                PuntosGanados[0].Usr_TotalTrainingSessions = PuntosGanados[0].Usr_TotalTrainingSessions + 1;
            }
            else if (totalSesiones >= 61 && totalSesiones <= 141)
            {
                PuntosGanados[0].Usr_Streng = PuntosGanados[0].Usr_Streng + 5;
                PuntosGanados[0].Usr_TotalTrainingSessions = PuntosGanados[0].Usr_TotalTrainingSessions + 1;
            }
            else if (totalSesiones >= 141)
            {
                PuntosGanados[0].Usr_Streng = PuntosGanados[0].Usr_Streng + 2;
                PuntosGanados[0].Usr_TotalTrainingSessions = PuntosGanados[0].Usr_TotalTrainingSessions + 1;
            }

            TRAINING tra = new TRAINING();
            tra.User_ID = 1;
            tra.Train_Date = DateTime.Now;

            db.TRAININGs.InsertOnSubmit(tra);
            db.SubmitChanges();
            return true;
        }
    }
}