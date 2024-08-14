using ProyectoFinalProgra5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalProgra5.Pages
{
    public partial class ListaHabitaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                CargarHabitaciones();
            }


        }




        private void CargarHabitaciones()
        {
            using (var context = new PV_ProyectoFinalEntities1())
            {
                var Habitaciones = context.sp_ListaHabitaciones ().ToList();

                GridViewHabitacion.DataSource = Habitaciones;
                GridViewHabitacion.DataBind();



                

            }
        }

        protected void GridViewMisReservaciones_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idHabitacion = Convert.ToInt32(GridViewHabitacion.SelectedDataKey.Value);
            //Response.Redirect("~/Pages/EditarProvincia.aspx?id="+idProvincia+"");
        }
    }








}