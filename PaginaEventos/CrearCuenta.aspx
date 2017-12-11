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
        <form id="form1" runat="server" class="login-form">
            <div class="login-wrap">
                <p class="login-img"><i class="icon_lock_alt"></i>REGISTRO<i class="icon_lock_alt"></i></p>
                <fieldset>
                    <div class="form-group col-md-12">
                        <label for="first_name">Nombre</label>
                        <asp:Label ID="lbl_nombre" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="txt_nombre" runat="server" class="form-control" placeholder="Nombre" ></asp:TextBox>
                    </div>

                    <div class="form-group col-md-12">
                        <label for="last_name">Apellido</label>
                        <asp:Label ID="lbl_apellido" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="txt_apellido" runat="server" class="form-control" placeholder="Apellido" ></asp:TextBox>
                    </div>
                </fieldset>
                <fieldset>
                    <div class="form-group col-md-12">
                        <label for="">Email</label>
                        <asp:Label ID="lbl_email" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="txt_email" runat="server" class="form-control" placeholder="Email" ></asp:TextBox>
                    </div>
                </fieldset>
                <fieldset>
                    <div class="form-group col-md-12">
                        <label for="password">Contraseña</label>
                        <asp:Label ID="lbl_contrasena" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="txt_contrasena" runat="server" class="form-control" placeholder="Contraseña" ></asp:TextBox>
                    </div>

                    <div class="form-group col-md-12">
                        <label for="confirm_password">Confirmar Contraseña</label>
                        <asp:Label ID="lbl_confirm_contrasena" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="txt_confirm_contrasena" runat="server" class="form-control" placeholder="Confirmar contraseña" ></asp:TextBox>
                    </div>
                </fieldset>

                <div class="form-group">
                    <div class="col-md-12">
                        <div class="checkbox">
                            <asp:CheckBox ID="chc_confirmartyc" runat="server" />Acepto los <a href="TerminosCondiciones.aspx">Terminos y condiciones</a>.
                        </div>
                    </div>
                </div>
                <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
                <div class="form-group">
                    <div class="col-md-12">
                        <asp:Button ID="btn_registrar" runat="server" Text="Registrar" class="btn btn-primary" OnClick="btn_registrar_Click" />
                        <span class="pull-right"><a href="Login.aspx">Ya estas registrado?</a></span>
                    </div>
                </div>
            </div>
        </form>
        <p></p>     
    </div>

</body>
</html>
