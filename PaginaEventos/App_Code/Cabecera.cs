using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Drawing;

/// <summary>
/// Descripción breve de Cabecera
/// </summary>
public class Cabecera
{
	public Cabecera()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public string GenerarCabecera(string img_usuario, string nombre_usuario, int cant_invitaciones, int cant_novedades){
        String cabecera;
        cabecera = 
          "<header class='header dark-bg'>" +
            
            //<!--logo start-->
            "<a href='Inicio.aspx' class='logo'>EV <span class='lite'>ENTOS</span></a>" +
            //<!--logo end-->

            "<div class='top-nav notification-row'>" +
                "<ul class='nav pull-right top-menu'>" +
                    "<li class='dropdown'>" +
                        "<a data-toggle='dropdown' class='dropdown-toggle' href='#'>" +
                            "<span class='profile-ava'><img src='" + img_usuario + "' alt='' /></span>" +
                            "<span class='username'>" + nombre_usuario + "</span><b class='caret'></b></a>" +
                            "<ul class='dropdown-menu extended logout'>" +
                            "<div class='log-arrow-up'></div>" +
                            "<li class='eborder-top'>" +
                                "<a href='Miperfil.aspx'><i class='icon_profile'></i>Mi Perfil</a>" +
                            "</li>" +
                            "<li>" +
                                "<a href='#'><i class='icon_mail_alt'></i>Mensajes</a>" +
                            "</li>" +
                            "<li>" +
                                "<a href='#'><i class='icon_chat_alt'></i>Chats</a>" +
                            "</li>" + 
                            "<li>" +
                                "<a href='Pprincipal.aspx'><i class='icon_key_alt'></i>Salir</a></li></ul>" +
                    "</li>" +
                    // 
                    "<li id='alert_notificatoin_bar' class='dropdown'>" +
                        "<a data-toggle='dropdown' class='dropdown-toggle' href='#'><i class='icon-bell-l'></i><span class='badge bg-important'>" + (cant_invitaciones+cant_novedades).ToString() + "</span></a>" +
                        "<ul class='dropdown-menu extended notification'>" +
                            "<div class='notify-arrow notify-arrow-blue'></div>" +
                            "<li><p class='blue'>Tiene " + (cant_invitaciones + cant_novedades).ToString() + " notificaciones nuevas</p></li>" + 
                            "<li><a href='#'><span class='label label-primary'><i class='icon_profile'></i></span>Invitaciones pendientes<span class='small italic pull-right'>" + cant_invitaciones.ToString() + "</span></a></li>" +
                            "<li><a href='#'><span class='label label-warning'><i class='icon_book_alt'></i></span>Novedades en Eventos<span class='small italic pull-right'>" + cant_novedades.ToString() + "</span></a></li>" +
                        "</ul></li></ul></div>" +
          "</header>";

        return cabecera;
    }
}