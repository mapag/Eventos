<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Miperfil.aspx.cs" Inherits="Miperfil" %>

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
    <link rel="stylesheet" href="css/fullcalendar.css" />
    <link href="css/widgets.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/stylePerfil.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/xcharts.min.css" rel=" stylesheet" />
    <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet" />

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



        <!--CONTENIDO start -->
        <section id="main-content" class="wrapper">
            <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

            <div class="container contenedor">
                <div class="fb-profile">
                    <img align="left" class="fb-image-lg" src="img/portada.jpg" alt="Cambiar foto de portada" />
                    <img align="left" class="fb-image-profile thumbnail" src="img/profile-picture.jpg" alt="Cambiar foto de perfil" />
                    <div class="fb-profile-text">
                        <h1>Mateo Pagniez</h1>
                        <p>Aca iria una frase o algo</p>
                    </div>
                </div>
                <div class="info-perfil">
                    <div id="profile" class="tab-pane">
                        <section class="panel">
                            <div class="bio-graph-heading">
                                <h1>Mi Cuenta</h1>
                            </div>
                            <div class="panel-body bio-graph-info">
                                <div class="row">
                                    <div class="bio-row">
                                        <p><span>Nombres </span>: Mateo</p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Apellidos </span>: Pagniez</p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Cumpleaños </span>: 25 Marzo 1998</p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>País </span>: Argentina</p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Email </span>: mateo@pagniez.com</p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Teléfono </span>: 15 6052 8202</p>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section>
                            <div class="row">
                            </div>
                        </section>
                    </div>
                </div>

            </div>
            <!-- /container -->
        </section>
        <!--CONTENIDO end -->


    </section>
    <!-- container section start -->

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
