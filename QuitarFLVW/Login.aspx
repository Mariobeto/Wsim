﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QuitarFLVW.WebForm3" %>
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
            margin: 0;
            padding: 0;
            font: 13px/16px "Lucida Grande", Arial, Sans-serif;
            color: #789;
            background-color: #ddeef6;
            background-image: url(../Styles/images/front-bg.gif);
            background-repeat: repeat;
            
            }
        .Password
        {
            moz-border-radius-topleft: 5px;
            -moz-border-radius-bottomleft: 5px;
            -moz-border-radius-bottomright: 5px;
            -webkit-border-top-left-radius: 5px;
            -webkit-border-bottom-left-radius: 5px;
            -webkit-border-bottom-right-radius: 5px;
            background-color: #ddeef6;
            z-index: 100;
            border: 1px transparent;
            text-align: left;
            padding: 12px;
            top: 24.5px;
            right: 0px;
            margin-top: 5px;
            margin-right: 0px;
            color: #789;
            font-size: 11px;
            background-color: #ddeef6;
	        margin: 0 auto 0 auto;
	        margin-top: 100px;
	       width: 370px;
            height: 260px;
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
        
        .signin_submit     {
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            background: #39d url('../Styles/images/bg-btn-blue.png') repeat-x scroll 0 0;
            border: 1px solid #39D;
            color: #fff;
            text-shadow: 0 -1px 0 #39d;
            padding: 4px 10px 5px;
            font-size: 11px;
            margin: 0 5px 0 0;
            font-weight: bold;
        }
        
        .signin_submit:hover, .signin_submit:focus {
	        background-position:0 -5px;
	        cursor:pointer;
        }
        .forgot_username_link
        {
            color: #27B!important;
            text-decoration: underline;
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
                Logo aqui
            </div>
            <div class="DatosLogin">
                
                <br />
                <table style="width: 390px">
                    <tr> 
                        <td style="text-align:left" class="style1"> Username:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtUsuario" runat="server" Font-Size="10pt" Width="180px" ValidationGroup="login"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr> 
                        <td style="text-align:left" class="style1"> Password:
                        </td>
                        <td style="text-align:left"> 
                            <asp:TextBox ID="txtPWD" runat="server" Font-Size="10pt" TextMode="Password" 
                                Width="180px" ValidationGroup="login"></asp:TextBox> 
                        </td>
                    </tr>
                    
                </table>
                <table>
                    <tr>
                        <td>
                            <a class="forgot_username_link" href="">Forgot your password?</a>
                        </td>
                        <td>
                            <a class="forgot_username_link" href="">Sign UP</a>
                        </td>
                    </tr>
                </table>
                <br />
                <div class="BotonLogin">
                    <asp:Button ID="Button1" CssClass="signin_submit" runat="server" Text="Sign in" onclick="Button1_Click"/>
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
