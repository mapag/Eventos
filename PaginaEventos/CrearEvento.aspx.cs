using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class CrearEvento : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    Validaciones val = new Validaciones();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;


        lbl_error1.ForeColor = lbl_error2.ForeColor = lbl_error3.ForeColor = Color.OrangeRed;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, 10, 20);
        if(!IsPostBack) ad.AgregaraDropDownListIDyVAL(ref ddl_tipoevento, "Select codigo, descripcion from tipos_eventos");
    }


    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        reiniciarerrores();
       bool correcto = true;
        //Label1.Text = txt_dateinicio.Text + " " + txt_timeinicio.Text;
        //Label1.Text = ddl_tipoevento.SelectedItem.Value;
        if(txt_descripcion.Text == "") {
            lbl_error1.Text = "La descripción es un campo obligatorio.";
            correcto = false;
        }
        string[] hoy = DateTime.Today.ToString().Split('/', ' ');
        string correccion = hoy[0];
        hoy[0] = hoy[2];
        hoy[2] = correccion;
        
        string[] fechainicio = txt_dateinicio.Text.Split('-');
        string[] fechafin = txt_datafin.Text.Split('-');
        
        if (txt_dateinicio.Text == "")
        {
            lbl_error2.Text = "La fecha de inicio es necesaria para crear el evento, no así su hora de inicio. La fecha de fin no es obligatoria, pero si recomendable. Ambas fechas son modificables mas adelante.";
            correcto = false;
        }
        if (val.ComparacionFechas(hoy, ">=", fechainicio))
        {
            lbl_error3.Text = "La fecha de inicio no puede ser anterior a la fecha actual.";
            correcto = false;
        }
        if (txt_datafin.Text != "" && val.ComparacionFechas(fechainicio, ">", fechafin))
        {
            lbl_error3.Text += " La fecha actual no puese ser posterior a la fecha de fin de evento.";
            correcto = false;
        }
        if(correcto)GenerarEvento();
    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {

    }

    protected void GenerarEvento()
    {
        string id = ad.ObtenerValor("SELECT (MAX(codigo)+1) AS codigo FROM eventos");
        string consultaSQL = "insert into eventos (codigo, descripcion, tipo, inicio, fin, estado) values ( " + id + ", '" + txt_descripcion.Text + "'," + ddl_tipoevento.SelectedItem.Value + ", '" + txt_dateinicio.Text + " " + txt_timeinicio.Text + "', '" + txt_datafin.Text + " " + txt_timefin.Text + "', 0)" ;
        string consultaSQL2 = "insert into evento_por_cuenta (evento, cuenta, perfil, estado, confirmacion) values (" + id + ", " + Session["CodigoCuenta"] + ", 1, 0, 1)";
        ad.EjecutarConsulta(consultaSQL);
        ad.EjecutarConsulta(consultaSQL2);
        Response.Redirect("Inicio.aspx");
    }

    protected void reiniciarerrores()
    {
        lbl_error1.Text = "";
        lbl_error2.Text = "";
        lbl_error3.Text = "";
    }
}