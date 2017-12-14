<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearInvitacion.aspx.cs" Inherits="CrearInvitacion" %>

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
    <link rel="icon" href="demo_icon.ico" sizes="72x72"/>

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
                <p class="login-img"></i>Invitar a:</p>
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
                <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
                <div class="form-group">
                    <div class="col-md-12">
                        <asp:Button ID="btn_registrar" runat="server" Text="Invitar" class="btn btn-primary" OnClick="btn_registrar_Click"/>
                    </div>
                </div>
            </div>
        </form>
        <p></p>     
    </div>

</body>
</html>