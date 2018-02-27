using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class EliminarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"].ToString() != "1") Response.Redirect("Administrador.aspx");
        lbl_confirm.Text = "Esta a punto de eliminar permanentemente la cuenta del cliente '" + Session["NombreCuentaABorrar"] + "' y todos los datos referentes a el del sistema. <br/> <br/> ¿Está usted seguro? <br/> <br/> Escriba BORRAR y presione el botón para confirmar.";
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
            ad.EjecutarConsulta("Delete from cuentas where codigo = " + Session["CodigoCuentaABorrar"]);
            ad.EjecutarConsulta("Delete from evento_por_cuenta where cuenta = " + Session["CodigoCuentaABorrar"]);
            ad.EjecutarConsulta("Delete from cuenta_por_mesa where cuenta = " + Session["CodigoCuentaABorrar"]);
            Session["NombreCuentaABorrar"] = null;
            Session["CodigoCuentaABorrar"] = null;
            Response.Redirect("Administrador.aspx");
        }
        else if (txt_confirm.Text != "" && txt_confirm.Text != "BORRAR")
        {
            lblError.Text = "La verificación no fue escrita correctamente. Intente de nuevo.";
        }
    }
}