using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_error.ForeColor = Color.Red;
    }
    protected void btn_conectar_Click(object sender, EventArgs e)
    {
        AccesoDatos ad = new AccesoDatos();
        Validaciones val = new Validaciones();
        string consultaSQL = "SELECT codigo from cuentas where mail = '" + txt_mail.Text + "' and contrasena = '" + txt_contrasena.Text + "'";
        lbl_error.Text = txt_mail.Text;
        if (val.CorreoElectronico(txt_mail.Text))
        {
            try
            {
                Session["CodigoCuenta"] = ad.ObtenerValor(consultaSQL);
                ad.EjecutarConsulta(consultaSQL);
                Response.Redirect("Inicio.aspx");
            }
            catch
            {
                lbl_error.Text = "La cuenta no existe o la contraseña es erronea.";
            }
        }
        else lbl_error.Text = "El correo electronico no tiene un formato correcto";
    }
    protected void btn_registrarse_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearCuenta.aspx");
    }
}