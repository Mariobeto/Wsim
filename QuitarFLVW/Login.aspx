<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QuitarFLVW.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Servicios/ServiciosW.svc" />
            </Services>
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/Metodos.js" />
            </Scripts>
         </asp:ScriptManager>
        <div class="Password">
            <div class="ImagenLogin">
        
            </div>
            <div class="DatosLogin">
                <br />
                <table style="width: 390px">
                    <tr> 
                        <td style="text-align:right" class="style1"> Usuario:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtUsuario" runat="server" Font-Size="10pt" Width="180px" ValidationGroup="login"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr> 
                        <td style="text-align:right" class="style1"> Contraseña:
                        </td>
                        <td style="text-align:left"> 
                            <asp:TextBox ID="txtPWD" runat="server" Font-Size="10pt" TextMode="Password" 
                                Width="180px" ValidationGroup="login"></asp:TextBox> 
                        </td>
                    </tr>
                </table>
                <br />
                <div class="BotonLogin">
                    <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClientClick="fnTrain();return false;"/>
                </div>
            </div>
        </div>
        <br />
</asp:Content>
