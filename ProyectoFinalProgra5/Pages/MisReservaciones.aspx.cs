using ProyectoFinalProgra5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalProgra5.Pages
{
    public partial class MisReservaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                CargarMisReservaciones();
            }


        }




        private void CargarMisReservaciones()
        {
            using (var context = new PV_ProyectoFinalEntities1())
            {
                var MisReservaciones = context.sp_ConsultarReservaidPersona().ToList();

                GridViewMisReservaciones.DataSource = MisReservaciones;
                GridViewMisReservaciones.DataBind();



                var fechaEntrada = System.DateTime.Now;
                var fechaSalida = System.DateTime.Now;

            }
        }

        protected void  GridViewMisReservaciones_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idReservacion = Convert.ToInt32(GridViewMisReservaciones.SelectedDataKey.Value);
            Response.Redirect("~/Pages/EditarReservacion.aspx?id="+idReservacion+"");
        }

        protected void lbtnConsultar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Detalle.aspx");
        }
    }





}