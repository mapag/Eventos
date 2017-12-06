using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PAGINA_EN_BLANCO : System.Web.UI.Page
{
    Cabecera cabecera = new Cabecera();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_cabecera.Text = cabecera.GenerarCabecera("img/avatar2_small.jpg", "Lautaro", 1, 2, 3);
    }
}