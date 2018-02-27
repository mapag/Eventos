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
        if (Session["CodigoCuenta"].ToString() != "1") Response.Redirect("Pprincipal.aspx");
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
        dt = ad.ObtenerTabla("eventos", "select e.codigo as 'Código evento', e.descripcion as Descripción, c.codigo as 'Código Creador', c.nombre +' '+ c.apellido as Creador ,e.inicio as 'Fecha de Inicio', e.fin as 'Fecha de Fin', (case when e.estado = 1 then 'Si' else 'No' end) as Finalizado from eventos e inner join evento_por_cuenta exc on e.codigo = exc.evento inner join cuentas c on c.codigo = exc.cuenta where e.codigo <> 1 and exc.perfil = 1");
        go.MostrarGrid(ref grd_eventos, dt);
    }

    protected void GenerarTablaCli()
    {
        dt = ad.ObtenerTabla("cuentas", "select c.codigo as Código, c.nombre as Nombre, c.apellido as Apellido, c.mail as 'Correo Electrónico', c.telefono as Teléfono from cuentas c where c.codigo <> 1");
        go.MostrarGrid(ref grd_clientes, dt);
    }


    protected void grd_clientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Session["NombreCuentaABorrar"] = grd_clientes.Rows[e.RowIndex].Cells[2].Text + " " + grd_clientes.Rows[e.RowIndex].Cells[3].Text;
        Session["CodigoCuentaABorrar"] = grd_clientes.Rows[e.RowIndex].Cells[1].Text;
        Response.Redirect("EliminarUsuario.aspx");
    }
    protected void grd_eventos_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Session["CodigoEvento"] = grd_eventos.Rows[e.RowIndex].Cells[1].Text;
        Session["NombreEvento"] = grd_eventos.Rows[e.RowIndex].Cells[2].Text;
        Session["NombreCreador"] = grd_eventos.Rows[e.RowIndex].Cells[4].Text;
        Response.Redirect("EliminarEvento.aspx");
    }
}