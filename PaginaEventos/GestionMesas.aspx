<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestionMesas.aspx.cs" Inherits="GestionMesas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template" />
    <meta name="author" content="GeeksLabs" />
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal" />
    <link rel="shortcut icon" href="img/favicon.png" />

    <title>Eventos.-</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" />
    <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/widgets.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/styleGestionEvento.css" rel="stylesheet" />
    <link href="css/xcharts.min.css" rel=" stylesheet" />
    <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
    <link href="css/styleGestionEvento.css" rel="stylesheet" />

</head>
<body>
    <form id="container" class="" runat="server">

        <!--CABECERA start-->
        <asp:Label ID="lbl_cabecera" runat="server" Text=""></asp:Label>
        <!--CABECERA end-->

        <script src="Login.aspx"></script>
        <!--BARRA LATERAL start-->
        <script src="js/barraLateral.js"></script>
        <!--BARRA LATERAL end-->



        <!--CONTENIDO start -->
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Gestion Mesas</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="Inicio.aspx">Inicio</a></li>
                            <li><i class="fa fa-users"></i><a href="GestionEvento.aspx">Gestion Evento</a></li>
                            <li><i class="fa fa-bars"></i><a href="GestionMesas.aspx">Gestion Mesas</a></li>
                        </ol>
                    </div>
                </div>
            </section>
            <section class="wrapperito">
                <asp:LinkButton ID="btnVolver" runat="server" CssClass="btn btn-info" OnClick="btnVolver_Click">
                                <i class="glyphicon glyphicon-chevron-left" style="margin-right: 10px;"></i>Volver</asp:LinkButton>
                <div class="wrapper cuadrito">




                    <div class="col-lg-4">
                        <asp:TextBox ID="txt_nuevamesa" runat="server" class="form form-control" placeholder="Nombre la nueva mesa"></asp:TextBox>

                    </div>
                    <div class="col-lg-2">
                        <asp:LinkButton ID="btn_crearmesa" runat="server" CssClass="btn btn-primary" OnClick="btn_crearmesa_Click"><i class="fa fa-plus" style="margin-right: 10px;"></i>Crear otra mesa</asp:LinkButton>
                    </div>


                    <div class="col-lg-4">
                        <asp:TextBox ID="txt_mesaactual" runat="server" class="form form-control" placeholder="Nombre de mesa actual"></asp:TextBox>

                    </div>
                    <div class="col-lg-2">
                        <asp:LinkButton ID="btn_cambiarnombremesa" runat="server" CssClass="btn btn-danger" OnClick="btn_cambiarnombremesa_Click"><i class="fa fa-pencil" style="margin-right: 10px;"></i>Cambiar nombre de mesa</asp:LinkButton>
                    </div>

                </div>
            </section>
            <section id="carousel" class="wrapper bg-carousel">
                    <table class="tabla-car">
                        <tr>
                            <td style="margin-bottom: 20px;">
                                <asp:LinkButton ID="btn_izquierda" runat="server" CssClass="izquierda btn btn-danger col-lg-3" OnClick="btn_izquierda_Click">
                                <i class="glyphicon glyphicon-chevron-left"></i></asp:LinkButton>
                            </td>

                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Nombre de la mesa:" CssClass="titulo"></asp:Label>
                                <asp:Label ID="lbl_mesa" runat="server" Text="Mesa" CssClass="titulo"></asp:Label></td>
                            <td>
                                <asp:LinkButton ID="btn_derecha" runat="server" CssClass="derecha btn btn-primary col-lg-3" OnClick="btn_derecha_Click">
                                <i class="glyphicon glyphicon-chevron-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ListBox ID="lst_mesa" runat="server" CssClass="form form-control listboxlargo"></asp:ListBox></td>
                            <td>
                                <asp:Button ID="btn_agregar" runat="server" Text="<< SENTAR <<" CssClass="btn btn-primary" OnClick="btn_agregar_Click" />
                                <asp:Button ID="btn_quitar" runat="server" Text=">> LEVANTAR >>" CssClass="btn btn-primary" OnClick="btn_quitar_Click" /></td>
                            <td>
                                <asp:DropDownList ID="ddl_invitados" runat="server" CssClass="form form-control"></asp:DropDownList></td>
                        </tr>
                    </table>
            </section>
            <!--CONTENIDO end -->
        </section>
        <!-- container section start -->
    </form>
    <!-- javascripts -->
    <script src="js/allscripts.js"></script>
    <script>
        //knob
        $(function () {
            $(".knob").knob({
                'draw': function () {
                    $(this.i).val(this.cv + '%')
                }
            })
        });

        //carousel
        $(document).ready(function () {
            $("#owl-slider").owlCarousel({
                navigation: true,
                slideSpeed: 300,
                paginationSpeed: 400,
                singleItem: true

            });
        });

        //custom select box

        $(function () {
            $('select.styled').customSelect();
        });

        /* ---------- Map ---------- */
        $(function () {
            $('#map').vectorMap({
                map: 'world_mill_en',
                series: {
                    regions: [{
                        values: gdpData,
                        scale: ['#000', '#000'],
                        normalizeFunction: 'polynomial'
                    }]
                },
                backgroundColor: '#eef3f7',
                onLabelShow: function (e, el, code) {
                    el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
                }
            });
        });
    </script>
</body>
</html>
