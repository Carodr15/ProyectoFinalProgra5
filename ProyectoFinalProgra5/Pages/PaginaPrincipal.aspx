<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="ProyectoFinalProgra5.Pages.PaginaPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="lblPersona" runat="server" Text="Bienvenido {0}">

    </asp:Label>




    <div>
    <asp:HyperLink ID="hlMisReservas" NavigateUrl="~/Pages/MisReservaciones.aspx"  runat="server">Mis Reservaciones</asp:HyperLink>
    </div>


     <div>
 <asp:HyperLink ID="hlListaHabitaciones" NavigateUrl="~/Pages/ListaHabitaciones.aspx"  runat="server">Lista Habitaciones</asp:HyperLink>
 </div>

</asp:Content>
