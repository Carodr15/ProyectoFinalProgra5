<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearReservacion.aspx.cs" Inherits="ProyectoFinalProgra5.Pages.CrearReservacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <h2>   Crear Reservación   </h2>

    <br />
    <br />

         <asp:Label ID="lblHotel" runat="server" Text="Hotel"></asp:Label>
         <asp:DropDownList ID="DropDownListHoteles" runat="server" AutoPostBack="true" DataValueField="idHotel"> 
        <asp:ListItem Text="Seleccione un hotel" Value=""></asp:ListItem>

    </asp:DropDownList>
      <br />




     <br />
         <asp:Label ID="lblCliente" runat="server" Text="Cliente"></asp:Label>
         <asp:DropDownList ID="DropDownListCliente" runat="server" AutoPostBack="true" DataValueField="idPersona"> 

     <asp:ListItem Text="Seleccione un CLiente" Value=""></asp:ListItem>

 </asp:DropDownList>
    
       <br />



    
     <br />

         <asp:Label ID="lblFechaEntrada" runat="server" Text="Fecha de Entrada"></asp:Label>
         <asp:TextBox ID="txtFechaEntrada" runat="server" TextMode="Date"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvFechaEntrada" runat="server" ControlToValidate="txtFechaEntrada" ErrorMessage="La fecha de entrada es requerida." CssClass="text-danger" />

      <br />



      <br />
        <asp:Label ID="lblFechaSalida" runat="server" Text="Fecha de Salida:"></asp:Label>
         <asp:TextBox ID="txtFechaSalida" runat="server" TextMode="Date"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvFechaSalida" runat="server" ControlToValidate="txtFechaSalida" ErrorMessage="La fecha de salida es requerida." CssClass="text-danger" />
      <br />




    <br />
       <asp:Label ID="lblNumAdultos" runat="server" Text="Número de Adultos:"></asp:Label>
      <asp:TextBox ID="txtnumeroAdultos" runat="server" TextMode="Number" Min="1"></asp:TextBox>
    <br />



    <br />
      <asp:Label ID="lblNumNinos" runat="server" Text="Número de Niños:"></asp:Label>
      <asp:TextBox ID="txtnumeroNinhos" runat="server" TextMode="Number" Min="0"></asp:TextBox>
    <br />





       <br />
          <asp:Label ID="lblTotalDiasReservacion" runat="server" Text="Total de Dias"></asp:Label>
          <asp:TextBox ID="txtTotalDiasReservacion" runat="server" ></asp:TextBox>
       <br />



     <br />
         <asp:Label ID="lblcostoporAdulto" runat="server" Text="Costo Por Adulto"></asp:Label>
         <asp:TextBox ID="TextcostoPorCadaAdulto" runat="server"></asp:TextBox>
     <br />



     <br />
         <asp:Label ID="lblcostoPorCadaNinho" runat="server" Text="Costo Por Niño"></asp:Label>
          <asp:TextBox ID="TextcostoPorCadaNinho" runat="server"></asp:TextBox>
     <br />



     <br />
        <asp:Label ID="lblcostoTotal" runat="server" Text="Costo Total"></asp:Label>
        <asp:TextBox ID="TextcostoTotal" runat="server"></asp:TextBox>
     <br />



    <br />
        <asp:Label ID="lblfechaCreacion" runat="server" Text="Fecha de Creacion"></asp:Label>
        <asp:TextBox ID="TextfechaCreacion" runat="server"  TextMode="Date"></asp:TextBox>
    <br />




      <br />
         <asp:Label ID="lblfechaModificacion" runat="server" Text="Fecha de Modificacion"></asp:Label>
         <asp:TextBox ID="TextfechaModificacion" runat="server" TextMode="Date"></asp:TextBox>
      <br />



      <br />
     <asp:Label ID="lblestado" runat="server" Text="estado"></asp:Label>
     <asp:TextBox ID="Textestado" runat="server" ></asp:TextBox>
  <br />


    <br />

    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  BackColor="Blue" ForeColor="White" CssClass="btn btn-primary" />

  


    <asp:Button ID="btnRegresar" runat="server" Text="Regresar" OnClick="btnRegresar_Click" />


    </asp:Content>
