using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace QuitarFLVW.Logic
{
    public class VariablesSesion
    {
        private HttpSessionState Session;

        public VariablesSesion(HttpSessionState Session)
        {
            this.Session = Session;
            if (simUsrID != 0)
            {
                this.simUsrID = 0;
                this.simUsuario = "";
            }
        }


        public int simUsrID
        {
            get { return Convert.ToInt32(Session["simUsrID"]); }
            set { Session["simUsrID"] = value; }
        }

        public string simUsuario
        {
            get
            {
                if (Session["maticUsuario"] != null)
                    return Session["maticUsuario"].ToString();
                else
                    return "";
            }
            set { Session["maticUsuario"] = value; }
        }
    }
}