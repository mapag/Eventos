using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class CrearCuenta : System.Web.UI.Page
{
    Validaciones val = new Validaciones();
    AccesoDatos ad = new AccesoDatos();
    protected void Page_Load(object sender, EventArgs e)
    {
        Reiniciar_lbls();
    }
    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        Reiniciar_lbls();
        bool correcto = true;
        if (txt_nombre.Text == "" || !val.Alfabetico(txt_nombre.Text))
        {
            lbl_nombre.Text = "El campo debe ser un valor alfabetico.";
            correcto = false;
        }
        if (txt_apellido.Text == "" || !val.Alfabetico(txt_apellido.Text))
        {
            lbl_apellido.Text = "El campo debe ser un valor alfabetico.";
            correcto = false;
        }
        if (txt_email.Text == "" || !val.CorreoElectronico(txt_email.Text))
        {
            lbl_email.Text = "El campo debe tener el formato correcto.";
            correcto = false;
        }
        if (ad.ContarRegistros("select * from cuentas where mail = '" + txt_email.Text + "'") > 0)
        {
            lbl_email.Text = "El correo ya esta en uso";
            correcto = false;
        }
        if (txt_contrasena.Text == "" || !val.Alfanumerico(txt_contrasena.Text))
        {
            lbl_contrasena.Text = "El campo debe ser un valor alfanumerico.";
            correcto = false;
        }
        if ( txt_confirm_contrasena.Text != txt_contrasena.Text)
        {
            lbl_confirm_contrasena.Text = "El campo debe ser identico al campo contraseña.";
            correcto = false;
        }
        if (!chc_confirmartyc.Checked)
        {
            lbl_error.Text = "Debe aceptar los terminos y condiciones";
            correcto = false;
        }
        if (correcto)
        {
            string consultaSQL = "insert into cuentas(nombre, apellido, mail, contrasena) values ('" + txt_nombre.Text + "', '" + txt_apellido.Text + "', '" + txt_email.Text + "', '" + txt_contrasena.Text + "')";
            try
            {
                ad.EjecutarConsulta(consultaSQL);
                Response.Redirect("Login.aspx");
            }
            catch
            {
                lbl_error.Text = "Hubo un error con la conexión, intentelo mas tarde.";
            }
        }
    }
    protected void Reiniciar_lbls()
    {
        lbl_apellido.ForeColor = lbl_confirm_contrasena.ForeColor = lbl_contrasena.ForeColor = lbl_email.ForeColor = lbl_error.ForeColor = lbl_nombre.ForeColor = Color.OrangeRed;
        lbl_apellido.Text = lbl_confirm_contrasena.Text = lbl_contrasena.Text = lbl_email.Text = lbl_error.Text = lbl_nombre.Text = "";
    }
}