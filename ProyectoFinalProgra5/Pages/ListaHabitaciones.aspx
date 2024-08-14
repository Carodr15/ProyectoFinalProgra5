<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaHabitaciones.aspx.cs" Inherits="ProyectoFinalProgra5.Pages.ListaHabitaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



        <div>
<h2>Lista Habitaciones</h2>
   </div>

    <div>
  <asp:HyperLink ID="hlCrearHabitacion" NavigateUrl="~/Pages/CrearHabitacion.aspx"  runat="server">Crear Habitación</asp:HyperLink>
</div>


    <asp:GridView ID="GridViewHabitacion" runat="server" >
            <Columns>
         <asp:BoundField DataField="idHabitacion" HeaderText="ID"/>
        
         <asp:BoundField DataField="nombre" HeaderText="Hotel "/>
        
         <asp:BoundField DataField="numeroHabitacion" HeaderText="Numero de Habitación"/>

        <asp:BoundField DataField="capacidadMaxima" HeaderText="Capacidad Maxima"/>

           <asp:BoundField DataField="estado" HeaderText="Estado"/>

            </Columns>





    </asp:GridView>







</asp:Content>
