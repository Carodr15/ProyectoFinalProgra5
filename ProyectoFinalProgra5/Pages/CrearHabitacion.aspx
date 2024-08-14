<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearHabitacion.aspx.cs" Inherits="ProyectoFinalProgra5.Pages.CrearHabitacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>  Crear Habitacion  </h2>




      <br />
  <br />

       <asp:Label ID="lblHotel" runat="server" Text="Hotel"></asp:Label>
       <asp:DropDownList ID="DropDownListHoteles" runat="server" AutoPostBack="true" DataValueField="idHotel"> 
      <asp:ListItem Text="Seleccione un hotel" Value=""></asp:ListItem>

      </asp:DropDownList>
    <br />



      <br />
         <asp:Label ID="lblnumeroHabitacion" runat="server" Text="Número de Habitacion"></asp:Label>
         <asp:TextBox ID="txtnumeroHabitacion" runat="server" ></asp:TextBox>
      <br />




       <br />
            <asp:Label ID="lblcapacidadMaxima" runat="server" Text="Capacidad Maxima"></asp:Label>
            <asp:TextBox ID="TextcapacidadMaxima" runat="server" ></asp:TextBox>
       <br />



    <br />
        <asp:Label ID="lbldescripcion" runat="server" Text="Descripcion"></asp:Label>
        <asp:TextBox ID="Textdescripcion" runat="server" ></asp:TextBox>
    <br />



      <br />

    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

    <asp:Button ID="btnRegresar" runat="server" Text="Resgresar" OnClick="btnRegresar_Click" />

      <br />


</asp:Content>
