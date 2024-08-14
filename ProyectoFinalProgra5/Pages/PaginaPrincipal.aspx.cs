using ProyectoFinalProgra5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalProgra5.Pages
{
    public partial class PaginaPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                int  idPersona = 0;
                idPersona = int.Parse(Session["idPersona"].ToString());
                PV_ProyectoFinalEntities1 _oContext = new PV_ProyectoFinalEntities1();
                var infoPersona = _oContext.Persona.Where(l => l.idPersona == idPersona).ToList();


                if (infoPersona.Count > 0)

                {
                    lblPersona.Text = string.Format(lblPersona.Text, infoPersona[0].nombreCompleto);
                }

            }

        }
    }
}