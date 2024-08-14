<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MisReservaciones.aspx.cs" Inherits="ProyectoFinalProgra5.Pages.MisReservaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




       <div>
          <h2>Mis Reservaciones</h2>
       </div>


     <div>
       <asp:HyperLink ID="hlCrearReservacion" NavigateUrl="~/Pages/CrearReservacion.aspx"  runat="server">Nueva Reservacion</asp:HyperLink>
     </div>

    <asp:GridView ID="GridViewMisReservaciones" runat="server" >



             <Columns>
       <asp:BoundField DataField="idReservacion" HeaderText="# Reservacion"/>
       <asp:BoundField DataField="nombre" HeaderText="Hotel" />
       <asp:BoundField DataField="fechaEntrada" HeaderText="Fecha de Entrada" DataFormatString="{0:yyyy-MM-dd}"/>
       <asp:BoundField DataField="fechaSalida" HeaderText="Fecha de Salida" DataFormatString="{0:yyyy-MM-dd}"/>
       <asp:BoundField DataField="costoTotal" HeaderText="Costo" />
       <asp:BoundField DataField="estado" HeaderText="Estado" />
          


                    
      <asp:TemplateField HeaderText="Acciones">
                 <ItemTemplate>
                    <asp:LinkButton ID="lbtnConsultar" runat="server" Text="Consultar"   CommandArgument='<%# Eval("idReservacion")  %>' CommandName="Consultar" onclick="lbtnConsultar_Click"  ></asp:LinkButton>
         
                </ItemTemplate>
          </asp:TemplateField>


        </Columns>

    </asp:GridView>






</asp:Content>
