<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmarBorrarEvento.aspx.cs" Inherits="ConfirmarBorrarEvento" %>

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
                <asp:Label ID="lbl_confirm" runat="server" Text=""></asp:Label>
            </div>
            <div class="login-wrap">
                <asp:TextBox ID="txt_confirm" runat="server" CssClass="form-control "></asp:TextBox>
            </div>
            <div class="login-wrap">
                <asp:Button ID="btn_confirm" runat="server" Text="Eliminar Registro" CssClass="btn btn-danger centered" OnClick="btn_confirm_Click" />
                <asp:Button ID="btn_regresar" runat="server" Text="Cancelar" CssClass="btn btn-danger centered" OnClick="btn_regresar_Click" />
            </div>
            <div class="login-wrap">
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
