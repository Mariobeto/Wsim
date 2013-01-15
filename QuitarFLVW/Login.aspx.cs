using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QuitarFLVW.Logic;

namespace QuitarFLVW
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private Metodos Metodos;
        private VariablesSesion varSes;
        protected void Page_Load(object sender, EventArgs e)
        {
            varSes = new VariablesSesion(Session);
            Metodos = new Metodos(Session);

            if (IsPostBack)
            {
                if (!ClientScript.IsStartupScriptRegistered("abrir"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "abrir", "abrirValidadores();", true);
                }
            }

            //if (Request.Cookies["Acceso"] != null)
            //    Response.Redirect("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validaIndiquenDatos() == true)
            {
                string UsrEncript = Metodos.Encriptar(txtUsuario.Text);
                string pswdEncript = Metodos.Encriptar(txtPWD.Text);
                varSes.simUsrID = 0;
                //Valido el acceso del usuario
                switch (Metodos.sValidaLogin(txtUsuario.Text, pswdEncript))
                {
                    case "U":
                        cvValidar.Display = ValidatorDisplay.None;
                        cvValidar.IsValid = false;
                        cvValidar.ErrorMessage = "El USUARIO no se encuentra REGISTRADO.";
                        break;
                    case "P":
                        cvValidar.Display = ValidatorDisplay.None;
                        cvValidar.IsValid = false;
                        cvValidar.ErrorMessage = "Verifique que la CONTRASEÑA sea CORRECTA.";
                        break;
                    case "A":
                        //Genero las cookies para validar sesiones. Y otorgo el acceso al sistema

                        HttpCookie myCookie = Metodos.generaCookie(UsrEncript);
                        Response.Cookies.Add(myCookie);

                        varSes.simUsuario = txtUsuario.Text;

                        Response.Redirect("Default.aspx");
                        break;
                }
            }
        }

        protected bool validaIndiquenDatos()
        {
            if (txtUsuario.Text.Length == 0)
            {
                cvValidar.Display = ValidatorDisplay.None;
                cvValidar.IsValid = false;
                cvValidar.ErrorMessage = "Es necesario que indique el USUARIO.";
                return false;
            }

            if (txtPWD.Text.Length == 0)
            {
                cvValidar.Display = ValidatorDisplay.None;
                cvValidar.IsValid = false;
                cvValidar.ErrorMessage = "Es necesario que indique la CONTRASEÑA.";
                return false;
            }

            return true;
        }
    }
}