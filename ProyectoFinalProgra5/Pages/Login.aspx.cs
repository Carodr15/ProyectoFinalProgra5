using ProyectoFinalProgra5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ProyectoFinalProgra5.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session.Remove("idPersona");
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            try
            {
                String username = Login1.UserName;
                String password = Login1.Password;

                PV_ProyectoFinalEntities1 _oContext =new PV_ProyectoFinalEntities1();
                var infoPersona = _oContext.Persona.Where(l => l.email == username && l.clave == password).ToList();


                if (infoPersona.Count > 0  )

                {
                    e.Authenticated = true;
                    Session.Add("idPersona", infoPersona[0].idPersona.ToString());
                    Response.Redirect("~/Pages/PaginaPrincipal.aspx");
                }

                else
                {
                    e.Authenticated= false; 
                }

            }
            catch (ThreadAbortException)
            { }
            catch (Exception)
            {
                Session.Remove("idPersona");
                throw;
            }
        }
    }
}