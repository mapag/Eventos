using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class GestionViajes : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    Permisos per = new Permisos();
    GestorObjetosWeb go = new GestorObjetosWeb();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        if (Session["CodigoEvento"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, 10);
        string nivelPer = per.CuentaEnEvento(Session["CodigoCuenta"].ToString(), Session["CodigoEvento"].ToString());
        if (nivelPer != "Creador" && nivelPer != "Administrador" && nivelPer != "Invitado") Response.Redirect("Pprincipal.aspx");
        if (nivelPer == "Creador" || nivelPer == "Administrador")
        {
            btn_invitar.Visible = true;
            if (nivelPer == "Creador")
            {
                grd_invitados.AutoGenerateSelectButton = true;
            }
        }
        dt = ad.ObtenerTabla("invitados", "select c.apellido + ' ' + c.nombre as Nombre, c.mail as 'Correo Electrónico', c.telefono as Teléfono, p.descripcion as 'Su rol', (case epc.confirmacion when 1 then 'Si' when 0 then 'No' end) as 'Confirmación' from cuentas c inner join evento_por_cuenta epc on epc.cuenta = c.codigo inner join perfiles p on p.codigo = epc.perfil where epc.evento = " + Session["CodigoEvento"] + "order by epc.perfil asc, c.apellido asc");
        go.MostrarGrid(ref grd_invitados, dt);
    }
    protected void btn_promocion_Click(object sender, EventArgs e)
    {
        if (dt.Rows[grd_invitados.SelectedIndex][3].ToString() == "Invitado") ad.EjecutarConsulta("update evento_por_cuenta set perfil = 2 where cuenta = (select codigo from cuentas where mail = '" + dt.Rows[grd_invitados.SelectedIndex][1].ToString() + "')");
        else if (dt.Rows[grd_invitados.SelectedIndex][3].ToString() == "Administrador") ad.EjecutarConsulta("update evento_por_cuenta set perfil = 3 where cuenta = (select codigo from cuentas where mail = '" + dt.Rows[grd_invitados.SelectedIndex][1].ToString() + "')");
        go.MostrarGrid(ref grd_invitados, dt);
        Response.Redirect("GestionViajes.aspx");
    }
    protected void grd_invitados_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_promocion.Visible = true;
        btn_noinvitar.Visible = true;
        if (dt.Rows[grd_invitados.SelectedIndex][3].ToString() == "Invitado") btn_promocion.Text = "Promocionar a administrador";
        else if (dt.Rows[grd_invitados.SelectedIndex][3].ToString() == "Administrador")
        {
            btn_promocion.Text = "Convertir en invitado";
            btn_noinvitar.Visible = false;
        }
        else if (dt.Rows[grd_invitados.SelectedIndex][3].ToString() == "Creador")
        {
            btn_promocion.Visible = false;
            btn_noinvitar.Visible = false;
        }
    }
    protected void btn_noinvitar_Click(object sender, EventArgs e)
    {
        ad.EjecutarConsulta("delete from evento_por_cuenta where cuenta = (select codigo from cuentas where mail = '" + dt.Rows[grd_invitados.SelectedIndex][1].ToString() + "') and evento = " + Session["CodigoEvento"]);
        // Eliminarlo tambien de la mesa en la que este colocado.
        Response.Redirect("GestionViajes.aspx");
    }
}