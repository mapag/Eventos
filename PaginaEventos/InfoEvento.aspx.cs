using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net.Mail;

public partial class InfoEvento : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        if (Session["CodigoEvento"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, ad.ContarRegistros("select * from evento_por_cuenta where confirmacion = 0 and cuenta = " + Session["CodigoCuenta"]));
        Confirmados.Value = ad.ContarRegistros("select cuenta from evento_por_cuenta where confirmacion = 1 and evento = " + Session["CodigoEvento"]).ToString();
        NoConfirmados.Value = ad.ContarRegistros("select cuenta from evento_por_cuenta where confirmacion = 0 and evento = " + Session["CodigoEvento"]).ToString();
        if (!IsPostBack) cargarNoargar_noConf();
    }
    protected void cargarNoargar_noConf()
    {
        DataTable dt = ad.ObtenerTabla("NoInvitados", "select c.nombre + ' ' + c.apellido  from cuentas c inner join evento_por_cuenta exc on c.codigo = exc.cuenta where exc.confirmacion = 0 and exc.evento = " + Session["CodigoEvento"].ToString());
        foreach (DataRow fila in dt.Rows)
        {
            lbl_noconfirmados.Text += "<li>" + fila[0].ToString() + "</li>";
        }
    }
}