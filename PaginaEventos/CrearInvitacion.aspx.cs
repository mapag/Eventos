using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class CrearInvitacion : System.Web.UI.Page
{
    Validaciones val = new Validaciones();
    AccesoDatos ad = new AccesoDatos();
    protected void Page_Load(object sender, EventArgs e)
    {

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
        if (correcto)
        {
            string consultaSQL = "if not exists (select * from cuentas where mail = '" + txt_email.Text + "') begin insert into cuentas (nombre, apellido, mail) values ('" + txt_nombre.Text + "', '" + txt_apellido.Text + "', '" + txt_email.Text + "') end";
            ad.EjecutarConsulta(consultaSQL);
            string cuenta = ad.ObtenerValor("select codigo from cuentas where mail = '" + txt_email.Text + "'");
            consultaSQL = "if not exists (select * from evento_por_cuenta where cuenta = " + cuenta + " and evento = " + Session["CodigoEvento"] + ") begin insert into evento_por_cuenta (cuenta, evento, perfil, confirmacion) values (" + cuenta + ", " + Session["CodigoEvento"] + ", 3, 0) end";
            ad.EjecutarConsulta(consultaSQL);
            if (Session["TipoEvento"].ToString() == "6") Response.Redirect("GestionEvento.aspx");
            else Response.Redirect("GestionViajes.aspx");
        }
    }

    protected void Reiniciar_lbls()
    {
        lbl_apellido.ForeColor = lbl_email.ForeColor = lbl_error.ForeColor = lbl_nombre.ForeColor = Color.OrangeRed;
        lbl_apellido.Text = lbl_email.Text = lbl_error.Text = lbl_nombre.Text = "";
    }
}