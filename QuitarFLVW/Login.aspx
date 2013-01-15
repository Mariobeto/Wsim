<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QuitarFLVW.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       .page
       {
            border:5px solid #EC9F2A;
           
           }
        .BotonLogin
        {
	        margin: 0 auto 0 auto;
	        width:107px;
	        height: 55px;
        }
        
        body
        {   
            background: url(../Styles/images/bg-gradient-sand.png) repeat-x 0 0,url(../Styles/images/bg-sand.png) repeat 0 0,#F5F1E8;
            
            }
        .Password
        {
            background : white;
	        margin: 0 auto 0 auto;
	        margin-top: 100px;
	        width:450px;
	        height: 320px;
	        border: 3px solid #F5F1E8;
        }
        
        .DatosLogin
        {
            background:url('../Styles/images/loggin1.png') no-repeat;
            margin: 0 auto 0 auto;
            margin-top: 90px;
            margin-left: 50px;
        }
      
        .style2
        {
            width: 228px;
        }
        .style3
        {
            width: 107px;
        }
        </style>
         <script type="text/javascript">
             function abrirValidadores() {
                 $("#divValidadores").dialog({
                     height: 180,
                     width: 400,
                     hide: { effect: 'blind', direction: "down" },
                     show: { effect: 'blind', direction: "up" },
                     modal: true, 
                     title: 'Wsim'
                 });
             }
    </script>
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
                        <td style="text-align:left" class="style1"> Usuario:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtUsuario" runat="server" Font-Size="10pt" Width="180px" ValidationGroup="login"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr> 
                        <td style="text-align:left" class="style1"> Contraseña:
                        </td>
                        <td style="text-align:left"> 
                            <asp:TextBox ID="txtPWD" runat="server" Font-Size="10pt" TextMode="Password" 
                                Width="180px" ValidationGroup="login"></asp:TextBox> 
                        </td>
                    </tr>
                </table>
                <br />
                <div class="BotonLogin">
                    <asp:Button ID="Button1" runat="server" Text="Aceptar" onclick="Button1_Click"/>
                </div>
            </div>
        </div>
        <br />
        <div id="divValidadores" style="color: red;">
            <asp:CustomValidator ID="cvValidar" runat="server"></asp:CustomValidator>
            <asp:ValidationSummary ID="vsMensajes" runat="server" 
                DisplayMode="SingleParagraph" />

        </div>
</asp:Content>
