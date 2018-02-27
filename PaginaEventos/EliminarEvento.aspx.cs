using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class EliminarEvento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Permisos perm = new Permisos();
        if (Session["CodigoCuenta"].ToString() != "1") Response.Redirect("Pprincipal.aspx");
        if (Session["CodigoEvento"] == null) Response.Redirect("Pprincipal.aspx");
        lbl_confirm.Text = "Esta a punto de eliminar permanentemente el registro '" + Session["NombreEvento"] + " Creado por el usuario " + Session["NombreCreador"] + "'. <br/> <br/> ¿Está usted seguro? <br/> <br/> Escriba BORRAR y presione el botón para confirmar.";
        lbl_confirm.ForeColor = Color.OrangeRed;
    }
    protected void btn_regresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        AccesoDatos ad = new AccesoDatos();
        if (txt_confirm.Text == "BORRAR")
        {
            ad.EjecutarConsulta("DELETE from eventos where codigo = " + Session["CodigoEvento"] + " DELETE from evento_por_cuenta where evento = " + Session["CodigoEvento"]);
            Session["CodigoEvento"] = null;
            Session["NombreEvento"] = null;
            Session["NombreCreador"] = null;
            Response.Redirect("Administrador.aspx");
        }
        else if (txt_confirm.Text != "" && txt_confirm.Text != "BORRAR")
        {
            lblError.Text = "La verificación no fue escrita correctamente. Intente de nuevo.";
        }
    }
}