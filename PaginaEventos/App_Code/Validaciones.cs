using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

/// <summary>
/// Descripción breve de Validaciones
/// </summary>
public class Validaciones
{
	public Validaciones()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public bool CorreoElectronico( string texto )
    {
        return Regex.IsMatch( texto, "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
    }
    public bool Numerico(string texto)
    {
        return Regex.IsMatch(texto, "^[0-9 ]+$");
    }
    public bool Alfabetico(string texto)
    {
        return Regex.IsMatch(texto, "^[a-zA-Z ]+$");
    }
    public bool Alfanumerico(string texto)
    {
        return Regex.IsMatch(texto, "^[a-zA-Z0-9]+$");
    }

    public bool ComparacionFechas(string[] fecha1, string comparador, string[] fecha2) // fecha[0] = año, fecha[1] = mes,  fecha[2] = dia
    {
        bool correcto = true;
        switch (comparador)
        {
            case "==":
                if (int.Parse(fecha1[0]) != int.Parse(fecha2[0]) || int.Parse(fecha1[1]) != int.Parse(fecha2[1]) || int.Parse(fecha1[2]) != int.Parse(fecha2[2])) correcto = false;
                break;
            case ">":
                if (int.Parse(fecha1[0]) < int.Parse(fecha2[0])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) < int.Parse(fecha2[1])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) == int.Parse(fecha2[1]) && int.Parse(fecha1[2]) <= int.Parse(fecha2[2])) correcto = false;
                break;
            case ">=":
                if (int.Parse(fecha1[0]) < int.Parse(fecha2[0])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) < int.Parse(fecha2[1])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) == int.Parse(fecha2[1]) && int.Parse(fecha1[2]) < int.Parse(fecha2[2])) correcto = false;
                break;
            case "<":
                if (int.Parse(fecha1[0]) > int.Parse(fecha2[0])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) > int.Parse(fecha2[1])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) == int.Parse(fecha2[1]) && int.Parse(fecha1[2]) >= int.Parse(fecha2[2])) correcto = false;
                break;
            case "<=":
                if (int.Parse(fecha1[0]) > int.Parse(fecha2[0])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) > int.Parse(fecha2[1])) correcto = false;
                else if (int.Parse(fecha1[0]) == int.Parse(fecha2[0]) && int.Parse(fecha1[1]) == int.Parse(fecha2[1]) && int.Parse(fecha1[2]) > int.Parse(fecha2[2])) correcto = false;
                break;
        }
        return correcto;
    }

}