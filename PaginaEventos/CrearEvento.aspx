<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearEvento.aspx.cs" Inherits="CrearEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template" />
    <meta name="author" content="GeeksLabs" />
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal" />
    <link rel="shortcut icon" href="img/favicon.png" />

    <title>Form Validation | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
</head>
<body>
    <section id="container" class="" runat="server">
       <!--CABECERA start-->
        <asp:Label ID="lbl_cabecera" runat="server" Text=""></asp:Label>
        <!--CABECERA end-->
        <script src="Login.aspx"></script>
        <!--BARRA LATERAL start-->
        <script src="js/barraLateral.js"></script>
        <!--BARRA LATERAL end-->

        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-files-o"></i>Crear Evento</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="icon_document_alt"></i>Crear</li>
                            <li><i class="fa fa-files-o"></i>Evento</li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                CREAR EVENTO
                            </header>
                            <div class="panel-body">
                                <div class="form">
                                    <form class="form-validate form-horizontal " id="register_form" method="get" action="" runat="server">
                                        <div class="form-group ">
                                            <label for="cliente" class="control-label col-lg-2">Cliente<span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <asp:TextBox class="form-control" ID="txtCliente" name="cliente" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="address" class="control-label col-lg-2">Evento <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <asp:DropDownList ID="ddlEvento" class="form-control" runat="server">
                                                    <asp:ListItem Value="1">Cumpleaños</asp:ListItem>
                                                    <asp:ListItem Value="2">Casamiento</asp:ListItem>
                                                    <asp:ListItem Value="3">Viaje</asp:ListItem>
                                                    <asp:ListItem Value="4">Otro</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="descripcion" class="control-label col-lg-2">Descripción<span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <asp:TextBox ID="txtDescripcion" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <!-- Esto no se como pasarlo por ahora -->
                                        <div class="form-group">
                                            <label for="fecha_inicio" class="control-label col-lg-2">Fecha de Inicio<span class="required">*</span></label>
                                            <div class='input-group date col-lg-4' id='datetimepicker1'>
                                                <input type='text' class="form-control" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                            <label for="fecha_fin" class="control-label col-lg-2">Fecha de Fin<span class="required">*</span></label>
                                            <div class='input-group date col-lg-4' id='datetimepicker2'>
                                                <input type='text' class="form-control" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- /Esto no se como pasarlo por ahora -->
                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" />
                                                <asp:Button ID="btnCancelar" class="btn btn-default" runat="server" Text="Cancelar" />
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </section>
    </section>
</body>
</html>
