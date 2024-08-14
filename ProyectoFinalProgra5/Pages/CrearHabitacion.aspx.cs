using ProyectoFinalProgra5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinalProgra5.Pages
{
    public partial class CrearHabitacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                PV_ProyectoFinalEntities1 _oContext = new PV_ProyectoFinalEntities1();
                var infoHoteles = _oContext.Hotel.ToList();


                DropDownListHoteles.DataSource = infoHoteles;
                DropDownListHoteles.DataTextField = "nombre";
                DropDownListHoteles.DataValueField = "idHotel";
                DropDownListHoteles.DataBind();
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)



        {

            {


                int idhotel = int.Parse(DropDownListHoteles.SelectedValue);
                string numeroHabitacion = txtnumeroHabitacion.Text.Trim();
                int capacidadMaxima = int.Parse(TextcapacidadMaxima.Text.Trim());
                string descripcion = Textdescripcion.Text.Trim();
                string estado = string.Empty;



                try
                {

                    using (PV_ProyectoFinalEntities1 db = new PV_ProyectoFinalEntities1())
                    {
                        db.sp_CrearHabitacion(idhotel, numeroHabitacion, capacidadMaxima, descripcion, estado);
                    }

                }
                catch (Exception)
                {

                    Response.Redirect("~/Pages/ErrorHabitaciones.aspx");
                }

                Response.Redirect("~/Pages/MensajeHabitaciones.aspx");

            }



        }




        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListaHabitaciones.aspx");
        }
    }
}