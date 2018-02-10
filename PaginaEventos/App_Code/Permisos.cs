using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


/// <summary>
/// Descripción breve de Permisos
/// </summary>
public class Permisos
{
    AccesoDatos ad = new AccesoDatos();
    public Permisos()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public string CuentaEnEvento(string cuenta, string evento)
    {
        return ad.ObtenerValor("select p.descripcion from evento_por_cuenta exc inner join perfiles p on exc.perfil = p.codigo where exc.cuenta= " + cuenta + " and exc.evento = " + evento);
    }

    public string DuenoCuenta(int codEvento, int codCuenta) 
    {
        return ad.ObtenerValor("select perfil from evento_por_cuenta where evento = " + codEvento + " and cuenta = " + codCuenta );
    }

}