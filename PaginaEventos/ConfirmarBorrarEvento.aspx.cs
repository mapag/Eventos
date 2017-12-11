using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class ConfirmarBorrarEvento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Permisos perm = new Permisos();
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        if (Session["CodigoEvento"] == null) Response.Redirect("Pprincipal.aspx");
        if (perm.CuentaEnEvento(Session["CodigoCuenta"].ToString(), Session["CodigoEvento"].ToString()) != "Creador") Response.Redirect("Pprincipal.aspx");
        lbl_confirm.Text = "Esta a punto de eliminar el registro " + Session["CodigoEvento"] + ". ¿Está usted seguro?. Escriba BORRAR y presione el botón para confirmar.";
        lbl_confirm.ForeColor = Color.OrangeRed;
    }
    protected void btn_regresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inicio.aspx");
    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        AccesoDatos ad = new AccesoDatos();
        if (txt_confirm.Text == "BORRAR")
        {
            ad.EjecutarConsulta("update eventos set estado = 1 where codigo = " + Session["CodigoEvento"]);
            Response.Redirect("Inicio.aspx");
        }
    }
}