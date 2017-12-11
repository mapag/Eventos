using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Drawing;

/// <summary>
/// Descripción breve de GestorObjetosWeb
/// </summary>
public class GestorObjetosWeb
{
	public GestorObjetosWeb()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable CrearDataTable(string[] columnas)
    {
        DataTable dt = new DataTable();
        DataColumn dc;
        int num = 0;
        foreach (string i in columnas)
        {
            if (num % 2 == 0)
            {
                dc = new DataColumn(i, System.Type.GetType(columnas[num+1])); // strings impares pueden ser: "System.Int32", "System.String" o "System.Decimal"
                dt.Columns.Add(dc);
            }
            num++;
        }
        return dt;
    }
    public void MostrarGrid(ref GridView tabla, DataTable dt)
    {
        tabla.DataSource = dt;
        tabla.DataBind();
    }

    public void AgregarRegistroAdt(ref DataTable dt, string[] registro)
    {
            dt.Rows.Add(registro);
    }
    public void EliminarRegistroDedt(DataTable dt, int pos)
    {
        dt.Rows.RemoveAt(pos);
        if (dt.Rows.Count == 0)
            dt = null;
    }
    public int PosicionRegistroEndt(DataTable dt, string elemento)
    {
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][0].ToString() == elemento)
            {
                int pos = i;
                return pos;
            }
        }
        return -1;
    }
}