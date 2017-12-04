<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearCuenta.aspx.cs" Inherits="CrearCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template" />
    <meta name="author" content="GeeksLabs" />
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal" />
    <link rel="shortcut icon" href="img/favicon.png" />

    <title>Login - Eventos</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
</head>
<body class="login-img2-body">

    <div class="container">
        <form id="form1" runat="server" class="login-form" method="get" action="php/register.php">
            <div class="login-wrap">
                <p class="login-img"><i class="icon_lock_alt"></i>REGISTRO<i class="icon_lock_alt"></i></p>
                <fieldset>
                    <div class="form-group col-md-12">
                        <label for="first_name">Nombre</label>
                        <input type="text" class="form-control" name="nombre" id="first_name" placeholder="First Name">
                    </div>

                    <div class="form-group col-md-12">
                        <label for="last_name">Apellido</label>
                        <input type="text" class="form-control" name="apellido" id="" placeholder="Last Name">
                    </div>
                </fieldset>
                <fieldset>
                    <div class="form-group col-md-12">
                        <label for="">Email</label>
                        <input type="email" class="form-control" name="email" id="" placeholder="Email">
                    </div>
                </fieldset>
                <fieldset>
                    <div class="form-group col-md-12">
                        <label for="password">Contraseña</label>
                        <input type="password" class="form-control" name="contrasena" id="password" placeholder="Password">
                    </div>

                    <div class="form-group col-md-12">
                        <label for="confirm_password">Confirmar Contraseña</label>
                        <input type="password" class="form-control" name="" id="confirm_password" placeholder="Confirm Password">
                    </div>
                </fieldset>

                <div class="form-group">
                    <div class="col-md-12">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="" id="" />
                                I accept the <a href="#">terms and conditions</a>.
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">
                            Register
                        </button>
                        <span class="pull-right"><a href="login.html">Ya estas registrado?</a></span>
                    </div>
                </div>
            </div>
        </form>
    </div>

</body>
</html>
