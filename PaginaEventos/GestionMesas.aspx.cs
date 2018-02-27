using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class GestionMesas : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    Permisos per = new Permisos();
    GestorObjetosWeb go = new GestorObjetosWeb();
    Validaciones val = new Validaciones();
    private static DataTable dt;
    private static int posicion;
    private static int maxpos;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        if (Session["CodigoEvento"] == null) Response.Redirect("Pprincipal.aspx");

        if (!IsPostBack)
        {
            obtenerdt();
            posicion = 0;
            maxpos = ad.ContarRegistros("select codigo from mesas where evento = " + Session["CodigoEvento"]);
            string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
            if (imagen == null) imagen = "img/avatar2_small.jpg";
            string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
            lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, ad.ContarRegistros("select * from evento_por_cuenta where confirmacion = 0 and cuenta = " + Session["CodigoCuenta"]));
            string nivelPer = per.CuentaEnEvento(Session["CodigoCuenta"].ToString(), Session["CodigoEvento"].ToString());
            if (nivelPer != "Creador" && nivelPer != "Administrador") Response.Redirect("GestionEvento.aspx");
            if (ad.ContarRegistros("select * from mesas where evento = " + Session["CodigoEvento"]) == 0)
            {
                ad.EjecutarConsulta("insert into mesas(nombre, evento) values ( 'mesa1', " + Session["CodigoEvento"] + ")");
                obtenerdt();
            }
            cargarvalores(dt.Rows[posicion][0].ToString());
        }
    }

    private void obtenerdt()
    {
        //dt.Clear();
        dt = ad.ObtenerTabla("Mesas", "select codigo from mesas where evento = " + Session["CodigoEvento"]);
    }
    private void cargarvalores(string mesa)
    {
        lst_mesa.Items.Clear();
        ddl_invitados.Items.Clear();
        lbl_mesa.Text = ad.ObtenerValor("select nombre from mesas where codigo = " + mesa);
        ad.AgregaraListBoxIDyVAL(ref lst_mesa, "select cpm.cuenta, c.nombre + ' ' + c.apellido as nombre from cuenta_por_mesa cpm inner join cuentas c on c.codigo = cpm.cuenta where cpm.mesa = " + mesa);
        ad.AgregaraListBoxIDyVAL(ref ddl_invitados, "select epc.cuenta, c.nombre + ' ' + c.apellido as nombre from evento_por_cuenta epc inner join cuentas c on c.codigo = epc.cuenta left join cuenta_por_mesa cpm on c.codigo = cpm.cuenta where epc.evento = " + Session["CodigoEvento"] + " and c.codigo not in ( select cpm.cuenta from cuenta_por_mesa cpm  inner join evento_por_cuenta epc on cpm.cuenta = epc.cuenta where epc.evento = " + Session["CodigoEvento"] + ")");
    }

    protected void btnVolver_Click(object sender, EventArgs e)
    {
        Response.Redirect("GestionEvento.aspx");
    }

    protected void btnVerMesas_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerMesas.aspx");
    }

    protected void btn_cambiarnombremesa_Click(object sender, EventArgs e)
    {
        if (txt_mesaactual.Text != "" && val.Alfanumerico(txt_mesaactual.Text) && ad.ContarRegistros("select * from mesas where nombre = '" + txt_mesaactual.Text + "' and evento = " + Session["CodigoEvento"]) == 0)
        {  
            string mesa = ad.ObtenerValor("select codigo from mesas where nombre = '" + lbl_mesa.Text + "' and evento = " + Session["CodigoEvento"].ToString());
            ad.EjecutarConsulta("update mesas set nombre = '" + txt_mesaactual.Text + "' where codigo = " + mesa);
            //txt_mesaactual.Text = "update mesas set nombre = '" + txt_mesaactual.Text + "' where codigo = " + mesa;
            lbl_mesa.Text = txt_mesaactual.Text;
        }
    }
    protected void btn_crearmesa_Click(object sender, EventArgs e)
    {
        if (txt_nuevamesa.Text != "" && val.Alfanumerico(txt_nuevamesa.Text) && ad.ContarRegistros("select * from mesas where nombre = '" + txt_nuevamesa.Text + "' and evento = " + Session["CodigoEvento"]) == 0)
        {
            maxpos++;
            ad.EjecutarConsulta("insert into mesas (nombre, evento) values ('" + txt_nuevamesa.Text + "'," + Session["CodigoEvento"] + " )");
            string mesa = ad.ObtenerValor("select codigo from mesas where nombre = '" + txt_nuevamesa.Text + "' and evento = " + Session["CodigoEvento"].ToString());
            cargarvalores(mesa);
            obtenerdt();
        }
    }
    protected void btn_izquierda_Click(object sender, EventArgs e)
    {
        posicion--;
        if (posicion < 0) posicion = maxpos - 1;
        cargarvalores(dt.Rows[posicion][0].ToString());
    }
    protected void btn_derecha_Click(object sender, EventArgs e)
    {
        posicion++;
        if (posicion == maxpos) posicion = 0;
        cargarvalores(dt.Rows[posicion][0].ToString());
    }
    protected void btn_agregar_Click(object sender, EventArgs e)
    {
        if (ddl_invitados.SelectedIndex > -1)
        {
            txt_mesaactual.Text = ddl_invitados.SelectedItem.Value;
            ad.EjecutarConsulta("insert into cuenta_por_mesa (cuenta, mesa) values (" + ddl_invitados.SelectedItem.Value + ", " + dt.Rows[posicion][0].ToString() + ")");
            cargarvalores(dt.Rows[posicion][0].ToString());
        }
    }
    protected void btn_quitar_Click(object sender, EventArgs e)
    {
        if (lst_mesa.SelectedIndex > -1 )
        {
            //txt_mesaactual.Text = lst_mesa.SelectedItem.Value;
            ad.EjecutarConsulta("delete from cuenta_por_mesa where cuenta = " + lst_mesa.SelectedItem.Value + " and mesa = " + dt.Rows[posicion][0].ToString());
            cargarvalores(dt.Rows[posicion][0].ToString());
        }
    }

}