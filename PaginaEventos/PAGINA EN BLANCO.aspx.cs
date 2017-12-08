using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PAGINA_EN_BLANCO : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, 10, 20);
    }
}