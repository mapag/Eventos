using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class InvitacionesPendientes : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    Permisos per = new Permisos();
    GestorObjetosWeb go = new GestorObjetosWeb();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, 0);
        dt = ad.ObtenerTabla("Invitaciones", "select e.codigo as ID, e.descripcion as Descripción, e.inicio as Fecha from evento_por_cuenta epc inner join eventos e on epc.evento = e.codigo where epc.confirmacion = 0 and epc.cuenta = " + Session["CodigoCuenta"]);
        go.MostrarGrid(ref grd_invitados, dt);
    }
    protected void btn_promocion_Click(object sender, EventArgs e)
    {
        if (grd_invitados.SelectedIndex != -1)
        {
            ad.EjecutarConsulta("Update evento_por_cuenta set confirmacion = 1 where evento = " + dt.Rows[grd_invitados.SelectedIndex][0].ToString() + " and cuenta = " + Session["CodigoCuenta"]);
            Response.Redirect("InvitacionesPendientes.aspx");
        }
    }
}