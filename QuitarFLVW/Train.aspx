<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Train.aspx.cs" Inherits="QuitarFLVW.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js"></script>
         <script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/jquery-ui.min.js"></script>
         <script type="text/javascript" src="Scripts/Metodos.js"></script>
	     <link rel="Stylesheet" type="text/css" href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/themes/dark-hive/jquery-ui.css" />
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
</asp:Content>
