using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class Inicio : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    GestorObjetosWeb go = new GestorObjetosWeb();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, 10, 20);
        GenerarTabla();
        lbl_EventosActivos.Text = ad.ObtenerValor("select COUNT(codigo) from eventos where estado = 1");
        lbl_EventosTotales.Text = ad.ObtenerValor("select COUNT(codigo) from eventos");
        lbl_ClientesTotales.Text = ad.ObtenerValor("select COUNT(codigo) from cuentas");
        lbl_ClientesActivos.Text = ad.ObtenerValor("select COUNT(distinct evento_por_cuenta.cuenta) from evento_por_cuenta inner join eventos on evento_por_cuenta.evento = eventos.codigo where evento_por_cuenta.confirmacion = 1 and eventos.estado = 0");
    }

    protected void GenerarTabla()
    {
        dt = ad.ObtenerTabla("eventos", "select e.codigo as Codigo, e.descripcion as Descripción, e.inicio as 'Fecha Inicio', e.fin as 'Fecha Fin', (case when epc.confirmacion = 1 then 'Si' else 'No' end) as Confirmacion, p.descripcion as 'Tu Rol' from eventos e inner join evento_por_cuenta epc on epc.evento = e.codigo inner join cuentas on cuentas.codigo = epc.cuenta inner join perfiles p on p.codigo = epc.perfil where e.estado = 0 and cuentas.codigo = " + Session["CodigoCuenta"]);
        go.MostrarGrid(ref grd_eventos, dt);
    }

    protected void BorrarFila(object sender, GridViewDeleteEventArgs e)
    {
        Session["CodigoEvento"] = grd_eventos.Rows[e.RowIndex].Cells[2].Text;
        Response.Redirect("ConfirmarBorrarEvento.aspx");
    }
    protected void EditarFila(object sender, EventArgs e)
    {
        Session["CodigoEvento"] = grd_eventos.Rows[grd_eventos.SelectedIndex].Cells[2].Text;
        Response.Redirect("GestionEvento.aspx");
    }
    protected void btn_CrearEvento_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearEvento.aspx");
    }
}