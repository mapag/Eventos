<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValidarCuenta.aspx.cs" Inherits="ValidarCuenta" %>

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
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/StyleValidarCuenta.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body class="login-img2-body">
    <div class="container" style="margin-top: 200px;">
        <form id="formValidarCuenta" runat="server" class="login-container">
            <div class="login-wrap">
                <div id="output"></div>
                <div class="form-box">
                    <div class="form-group">
                        <p style="font-size: 20px;" class="caption">Solo un paso más!</p>
                        <strong style="font-size: 20px;">Te hemos enviado un código de verificación al mail para válidar que sea correcto. <br /> Cuando encuentres el mensaje, lo unico que tenes que hacer es darle click al link y ya va a estar verificada tu cuenta.</strong>
                    </div>
                    <div class="form-group" style=" margin-top: 40px;">
                        <asp:LinkButton ID="btnVolver" CssClass="btn btn-primary" runat="server" OnClick="btnVolver_Click">Volver a la página de inicio de sesión</asp:LinkButton>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
