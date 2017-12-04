using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

/// <summary>
/// Descripción breve de AccesoDatos
/// </summary>
public class AccesoDatos
{
    String ruta = "Data Source=localhost\\sqlexpress;Initial Catalog=Eventos;Integrated Security=True";
	public AccesoDatos()
	{
		// TODO: Agregar aquí la lógica del constructor
	}
    private SqlConnection ObtenerConexion()
    {
        SqlConnection cn = new SqlConnection(ruta);
        try
        {
            cn.Open();
            return cn;
        }
        catch (Exception ex)
        {
            return null;
        }
    }
    private SqlDataAdapter ObtenerAdaptador(String consultaSql)
    {
        SqlDataAdapter adaptador;
        try
        {
            adaptador = new SqlDataAdapter(consultaSql, ruta);
            return adaptador;
        }
        catch (Exception ex)
        {
            return null;
        }
    }
    public void EjecutarConsulta(string consultaSQL)
    {
        SqlConnection cn = ObtenerConexion();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = consultaSQL;

        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public int ContarRegistros(string consultaSQL)
    {
        int cantidad = 0;
        SqlConnection cn = ObtenerConexion();
        SqlCommand comando = new SqlCommand();
        comando.CommandText = consultaSQL;
        comando.Connection = cn;
        SqlDataReader dr = comando.ExecuteReader();
        while (dr.Read() == true)
        {
            cantidad++;
        }
        cn.Close();
        return cantidad;
    }
    public void AgregaraListBox(ref ListBox lst, string consultaSQL )
    {
        SqlConnection cn = ObtenerConexion();
        SqlCommand comando = new SqlCommand();
        comando.CommandText = consultaSQL;
        comando.Connection = cn;
        SqlDataReader dr = comando.ExecuteReader();
        while (dr.Read() == true)
        {
            lst.Items.Add(dr[0].ToString());
        }
        cn.Close();
    }

    public void AgregaraDropDownList(ref DropDownList lst, string consultaSQL)
    {
        SqlConnection cn = ObtenerConexion();
        SqlCommand comando = new SqlCommand();
        comando.CommandText = consultaSQL;
        comando.Connection = cn;
        SqlDataReader dr = comando.ExecuteReader();
        while (dr.Read() == true)
        {
            lst.Items.Add(dr[0].ToString());
        }
        cn.Close();
    }

    public void AgregaraListBoxIDyVAL(ref ListBox lst, string consultaSQL)
    {
        SqlConnection cn = ObtenerConexion();
        SqlCommand comando = new SqlCommand();
        comando.CommandText = consultaSQL;
        comando.Connection = cn;
        SqlDataReader dr = comando.ExecuteReader();
        ListItem item;
        while (dr.Read() == true)
        {
            item = new ListItem();
            item.Text = dr[1].ToString();
            item.Value = dr[0].ToString();
            lst.Items.Add( item );
        }
        cn.Close();
    }

    public void AgregaraDropDownListIDyVAL(ref DropDownList lst, string consultaSQL)
    {
        SqlConnection cn = ObtenerConexion();
        SqlCommand comando = new SqlCommand();
        comando.CommandText = consultaSQL;
        comando.Connection = cn;
        SqlDataReader dr = comando.ExecuteReader();
        ListItem item;
        while (dr.Read() == true)
        {
            item = new ListItem();
            item.Text = dr[1].ToString();
            item.Value = dr[0].ToString();
            lst.Items.Add(item);
        }
        cn.Close();
    }

    public DataTable ObtenerTabla( String Nombre, String consultaSQL)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter adp = ObtenerAdaptador(consultaSQL);
        adp.Fill(ds, Nombre);
        return ds.Tables[Nombre];
    }

    public string ObtenerValor(string consultaSQL) //Obtiene el valor de la primera columna del primer registro de la consulta.
    {
        SqlConnection cn = ObtenerConexion();
        SqlCommand comando = new SqlCommand();
        comando.CommandText = consultaSQL;
        comando.Connection = cn;
        SqlDataReader dr = comando.ExecuteReader();
        dr.Read();
        string dato = dr[0].ToString();  
        cn.Close();
        return dato;
    }
}