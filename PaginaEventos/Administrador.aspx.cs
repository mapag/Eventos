using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class Administrador : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    GestorObjetosWeb go = new GestorObjetosWeb();
    Permisos pe = new Permisos();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, ad.ContarRegistros("select * from evento_por_cuenta where confirmacion = 0 and cuenta = " + Session["CodigoCuenta"]));
        GenerarTabla();
        GenerarTablaCli();
        lbl_EventosActivos.Text = ad.ObtenerValor("select COUNT(codigo) from eventos where estado = 0");
        lbl_EventosTotales.Text = ad.ObtenerValor("select COUNT(codigo) from eventos");
        lbl_ClientesTotales.Text = ad.ObtenerValor("select COUNT(codigo) from cuentas");
        lbl_ClientesActivos.Text = ad.ObtenerValor("select COUNT(distinct evento_por_cuenta.cuenta) from evento_por_cuenta inner join eventos on evento_por_cuenta.evento = eventos.codigo where evento_por_cuenta.confirmacion = 1 and eventos.estado = 0");
    }

    protected void GenerarTabla()
    {
        dt = ad.ObtenerTabla("eventos", "select e.codigo as Código, e.descripcion as Descripción, e.inicio as 'Fecha de Inicio', e.fin as 'Fecha de Fin', (case when e.estado = 1 then 'Si' else 'No' end) as Finalizado from eventos e");
        go.MostrarGrid(ref grd_eventos, dt);
    }

    protected void BorrarFila(object sender, GridViewDeleteEventArgs e)
    {
        int codDueno = Int32.Parse(pe.DuenoCuenta(Int32.Parse(grd_eventos.Rows[e.RowIndex].Cells[2].Text), Int32.Parse(Session["CodigoCuenta"].ToString())));

        if (codDueno == 1)
        {
            Session["CodigoEvento"] = grd_eventos.Rows[e.RowIndex].Cells[2].Text;
            Session["NombreEvento"] = grd_eventos.Rows[e.RowIndex].Cells[3].Text;
            Response.Redirect("ConfirmarBorrarEvento.aspx");
        }
        else
        {
            noBorrar.Text = "No se puede borrar el evento. \n Solo el CREADOR puede borrar este evento.";
        }
    }
    protected void EditarFila(object sender, EventArgs e)
    {
        Session["CodigoEvento"] = grd_eventos.Rows[grd_eventos.SelectedIndex].Cells[2].Text;
        Session["TipoEvento"] = ad.ObtenerValor("Select tipo from eventos where codigo = " + Session["CodigoEvento"]);
        if (Session["TipoEvento"].ToString() == "6") Response.Redirect("GestionEvento.aspx");
        else Response.Redirect("GestionViajes.aspx");
    }
    protected void btn_CrearEvento_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearEvento.aspx");
    }

    protected void GenerarTablaCli()
    {
        dt = ad.ObtenerTabla("cuentas", "select c.codigo as Código, c.nombre as Nombre, c.apellido as Apellido, c.mail as 'Correo Electrónico', c.telefono as Teléfono from cuentas c");
        go.MostrarGrid(ref grd_clientes, dt);
    }
}