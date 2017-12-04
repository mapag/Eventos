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

}