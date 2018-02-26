using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class VerMesas : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    AccesoDatos ad = new AccesoDatos();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodigoCuenta"] == null) Session["CodigoCuenta"] = 1;
        if (Session["CodigoCuenta"] == null) Response.Redirect("Pprincipal.aspx");
        if (Session["CodigoEvento"] == null) Response.Redirect("Pprincipal.aspx");
        string imagen = ad.ObtenerValor("Select imagen from cuentas where codigo = " + Session["CodigoCuenta"]);
        if (imagen == null) imagen = "img/avatar2_small.jpg";
        string nombre = ad.ObtenerValor("Select nombre from cuentas where codigo = " + Session["CodigoCuenta"]);
        lbl_cabecera.Text = cabecera.GenerarCabecera(imagen, nombre, ad.ContarRegistros("select * from evento_por_cuenta where confirmacion = 0 and cuenta = " + Session["CodigoCuenta"]));
        /*lbl_mesas.Text = "<div class='col-sm-3'>" +
                            "<div class='well'>" +
                                "<h1 style='margin-bottom: 30px;'><asp:Label ID='nombreMesa1' runat='server'>Mesa Principal</asp:Label></h1>" +
                                "<ul>" +
                                    "<li style='font-size: 20px;'><i class='fa fa-check-square'></i><asp:Label ID='nombreInvitado1' runat='server'> Jorge Lopez</asp:Label></li>" +
                                    "<li style='font-size: 20px;'><i class='fa fa-check-square-o'></i> Mateo Pagniez</li>" +
                                    "<li style='font-size: 20px;'><i class='fa fa-check-square'></i> Lautaro Rodriguez</li>" +
                                    "<li style='font-size: 20px;'><i class='fa fa-check-square-o'></i> Gianfranco Lopez</li>" +
                                "</ul>" +
                                "<hr/>" +
                                "<h3><a class='btn btn-default' href='#'><i class='icon-ok'></i>Modificar Mesa</a></h3>" +
                            "</div>" +
                        "</div>";*/
        cargar_mesas();
    }

    private void cargar_mesas()
    {
        string nombremesa = "";
        string chek;
        DataTable dt = new DataTable();
        dt = ad.ObtenerTabla("Mesas", "select a.nombre as mesa, c.nombre + ' ' + c.apellido as cuenta from mesas a inner join cuenta_por_mesa b on a.codigo = b.mesa inner join cuentas c on b.cuenta = c.codigo where a.evento = " + Session["CodigoEvento"] + " order by a.nombre asc");

        for (int i = 0; i < dt.Rows.Count ; i++)
        {
            if (i % 2 == 0) chek = "<i class='fa fa-check-square-o'></i> ";
            else chek = "<i class='fa fa-check-square'></i> ";
            if (nombremesa == "")
            {
                nombremesa = dt.Rows[i]["mesa"].ToString();
                lbl_mesas.Text += "<div class='col-sm-3'>" +
                            "<div class='well'>" +
                                "<h1 style='margin-bottom: 30px;'><asp:Label ID='" + nombremesa + "' runat='server'>" + nombremesa + "</asp:Label></h1>" +
                                "<ul>" +
                                "<li style='font-size: 20px;'>" + chek + dt.Rows[i]["cuenta"] + "</li>";
            }
            else if (nombremesa != dt.Rows[i]["mesa"].ToString())
            {
                nombremesa = dt.Rows[i]["mesa"].ToString();
                lbl_mesas.Text += "</ul>" +
                                "<hr/>" +
                                "<h3><a class='btn btn-default' href='GestionMesas.aspx'><i class='icon-ok'></i>Modificar Mesa</a></h3>" +
                            "</div>" +
                        "</div>";
                lbl_mesas.Text += "<div class='col-sm-3'>" +
                            "<div class='well'>" +
                                "<h1 style='margin-bottom: 30px;'><asp:Label ID='" + nombremesa + "' runat='server'>" + nombremesa + "</asp:Label></h1>" +
                                "<ul>" +
                                "<li style='font-size: 20px;'>" + chek + dt.Rows[i]["cuenta"] + "</li>";
            }
            else
            {
                lbl_mesas.Text += "<li style='font-size: 20px;'>" + chek + dt.Rows[i]["cuenta"] + "</li>";
            }
        }
        if (nombremesa != "")
            lbl_mesas.Text += "</ul>" +
                                "<hr/>" +
                                "<h3><a class='btn btn-default' href='GestionMesas.aspx'><i class='icon-ok'></i>Modificar Mesa</a></h3>" +
                            "</div>" +
                        "</div>";
    }
}