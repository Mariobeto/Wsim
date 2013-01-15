<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Work.aspx.cs" Inherits="QuitarFLVW.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Servicios/ServiciosW.svc" />
            </Services>
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/Metodos.js" />
            </Scripts>
         </asp:ScriptManager>

        <p>
            <asp:Button ID="btnWork" runat="server" Text="Trabajar" OnClientClick="fnWork();return false;" />
        </p>
</asp:Content>
