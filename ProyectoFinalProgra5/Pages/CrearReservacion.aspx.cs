using ProyectoFinalProgra5.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace ProyectoFinalProgra5.Pages
{
    public partial class CrearReservacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                PV_ProyectoFinalEntities1 _oContext = new PV_ProyectoFinalEntities1();
                var infoHoteles =_oContext.Hotel.ToList();


                DropDownListHoteles.DataSource = infoHoteles;
                DropDownListHoteles.DataTextField = "nombre";
                DropDownListHoteles.DataValueField = "idHotel";
                DropDownListHoteles.DataBind();
            }






            if (!IsPostBack)
            {
                PV_ProyectoFinalEntities1 _oContext = new PV_ProyectoFinalEntities1();
                var infoPersona = _oContext.Persona.ToList();


                DropDownListCliente.DataSource = infoPersona;
                DropDownListCliente.DataTextField = "nombreCompleto";
                DropDownListCliente.DataValueField = "idPersona";
                DropDownListCliente.DataBind();
            }



        }

        protected void btnGuardar_Click(object sender, EventArgs e)

        {

            {


                int idReservacion = int.Parse(DropDownListHoteles.SelectedValue);
                int idPersona = int.Parse(DropDownListCliente.SelectedValue);
                DateTime fechaEntrada = DateTime.Parse(txtFechaEntrada.Text);
                DateTime fechaSalida = DateTime.Parse(txtFechaSalida.Text);
                int numeroAdultos = int.Parse(txtnumeroAdultos.Text); 
                int numeroNinhos = int.Parse(txtnumeroNinhos.Text); 
                int totalDiasReservacion = int.Parse(txtTotalDiasReservacion.Text);
                decimal costoPorCadaAdulto = decimal.Parse(TextcostoPorCadaAdulto.Text.Trim());
                decimal costoPorCadaNinho = decimal.Parse(TextcostoPorCadaNinho.Text.Trim());
                decimal costoTotal = decimal.Parse(TextcostoTotal.Text.Trim());
                DateTime fechaCreacion = DateTime.Parse(TextfechaCreacion.Text);
                DateTime fechaModificacion = DateTime.Parse(TextfechaModificacion.Text);
                string estado = string.Empty;




            




                try
                {

                    using (PV_ProyectoFinalEntities1 db = new PV_ProyectoFinalEntities1())
                    {
                        db.sp_CrearReservacion( fechaEntrada, fechaSalida, numeroAdultos, numeroNinhos, totalDiasReservacion,costoPorCadaAdulto,costoPorCadaNinho,costoTotal,fechaCreacion, fechaModificacion, estado);
                    }

                }
                catch (Exception)
                {

                    Response.Redirect("~/Pages/Error.aspx");
                }

                Response.Redirect("~/Pages/Mensaje.aspx");

            }



        }




        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListaHabitaciones.aspx");
        }
    }
}