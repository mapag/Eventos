using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Miperfil : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if  (imagen == "") imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, ad.ContarRegistros("select * from evento_por_cuenta where confirmacion = 0 and cuenta = " + Session["CodigoCuenta"]));
        dt = ad.ObtenerTabla("perfil", "select codigo, contrasena, nombre, apellido, mail, telefono, imagen, imagen2, fechanac, frase from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (!IsPostBack)
        {
            txt_nombre.Text = lbl_nombre.Text = dt.Rows[0][2].ToString();
            txt_apellido.Text = dt.Rows[0][3].ToString();
            txt_mail.Text = dt.Rows[0][4].ToString();
            txt_tel.Text = dt.Rows[0][5].ToString();
            txt_abatar.Text = dt.Rows[0][6].ToString();
            txt_cartel.Text = dt.Rows[0][7].ToString();
            img_grande.Text = "<img align='left' class='fb-image-lg' src='" + dt.Rows[0][7].ToString() + "' /> ";
            string[] fecha = dt.Rows[0][8].ToString().Split(' ');
            img_pequena.Text = "<img align='left' class='fb-image-profile thumbnail' src='" + dt.Rows[0][6].ToString() + "' />";
            txt_nacimiento.Text = fecha[0];
            txt_frase.Text = dt.Rows[0][9].ToString();
        }
    }
    protected void btn_guardar_Click(object sender, EventArgs e)
    {
        ad.EjecutarConsulta("Update cuentas set nombre = '" + txt_nombre.Text + "', apellido = '" + txt_apellido.Text + "', mail = '" + txt_mail.Text + "', telefono = '" + txt_tel.Text + "', fechanac = '" + txt_nacimiento.Text + "', frase = '" + txt_frase.Text + "', imagen = '" + txt_abatar.Text + "', imagen2 = '" + txt_cartel.Text + "' where codigo = "+ Session["CodigoCuenta"]);
    }
}