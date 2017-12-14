<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
<body class="login-img3-body">
    <div class="container">
        <form class="login-form" id="form1" runat="server">
            <div class="login-wrap">
                <p class="login-img"><i class="icon_lock_alt"></i></p>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_profile"></i></span>
                    <asp:TextBox ID="txt_mail" runat="server" class="form-control" placeholder="Correo Electronico" autofocus=""></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                    <asp:TextBox ID="txt_contrasena" runat="server" class="form-control" placeholder="Contraseña" type="password" autofocus=""></asp:TextBox>
                </div>
                <label class="checkbox">
                    <span class="pull-right"><a href="404.aspx">¿Olvidó su contraseña?</a></span>
                </label>
                <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
                <asp:Button ID="btn_conectar" runat="server" Text="Conectarse" class="btn btn-primary btn-lg btn-block" OnClick="btn_conectar_Click" />
                <asp:Button ID="btn_registrarse" runat="server" Text="Registrarse" class="btn btn-info btn-lg btn-block" OnClick="btn_registrarse_Click" />
            </div>
        </form>
    </div>
</body>
</html>
