using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class GestionEvento : System.Web.UI.Page
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
        if (Session["CodigoEvento"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, 10, 20);
        string nivelPer = per.CuentaEnEvento(Session["CodigoCuenta"].ToString(), Session["CodigoEvento"].ToString());
        if (nivelPer != "Creador" && nivelPer != "Administrador" && nivelPer != "Invitado") Response.Redirect("Pprincipal.aspx");
        dt = ad.ObtenerTabla("invitados", "select * from cuentas");
        go.MostrarGrid(ref grd_invitados, dt);
        if (Session["TipoEvento"].ToString() == "6") btn_gestionmesas.Visible = true;
    }
}