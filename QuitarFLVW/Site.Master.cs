using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QuitarFLVW.Logic;

namespace QuitarFLVW
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //string userSettings = "";
                //if (Request.Cookies["Acceso"] != null)
                //{
                //    if (Request.Cookies["Acceso"]["Usuario"] != null)
                //      userSettings = Request.Cookies["Acceso"]["Usuario"];                 
                //}
                //else
                //    Response.Redirect("Login.aspx");

                //lblComander.Text = Metodos.Desencriptar(userSettings);
            }
            catch (Exception) { Response.Redirect("Login.aspx"); }
        }
    }
}
