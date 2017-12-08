<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" %>

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
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/xcharts.min.css" rel=" stylesheet" />
    <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet" />

</head>
<body>
    <section id="Section1" class="" runat="server">

        <!--CABECERA start-->
        <asp:Label ID="lbl_cabecera" runat="server" Text=""></asp:Label>
        <!--CABECERA end-->

        <script src="Login.aspx"></script>
        <!--BARRA LATERAL start-->
        <script src="js/barraLateral.js"></script>
        <!--BARRA LATERAL end-->



        <!--CONTENIDO start -->
        <section id="main-content" class="wrapper">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Dashboard</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="fa fa-laptop"></i>Dashboard</li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box blue-bg">
                            <i class="fa fa-calendar"></i>
                            <div class="count">32</div>
                            <div class="title">Eventos Activos</div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box dark-bg">
                            <i class="fa fa-calendar"></i>
                            <div class="count">50</div>
                            <div class="title">Eventos Totales</div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box brown-bg">
                            <i class="fa fa-user"></i>
                            <div class="count">342</div>
                            <div class="title">Clientes Activos</div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box green-bg">
                            <i class="fa fa-user"></i>
                            <div class="count">642</div>
                            <div class="title">Clientes Totales</div>
                        </div>
                    </div>
                </div>

                <a href="CrearEvento.aspx">
                    <button type="submit" class="btn btn-primary" style="margin-bottom: 30px;"><i class="fa fa-plus" style="padding-right: 10px;"></i>Crear Evento</button></a>
                <!-- EVENTOS ACTIVOS -->
                <div class="row" runat="server">

                    <div class="col-lg-12 col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2><i class="fa fa-users"></i><strong>Eventos Activos</strong></h2>
                                <div class="panel-actions">
                                    <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                    <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <div class="panel-body">
                                <table class="table bootstrap-datatable countries">
                                    <thead>
                                        <tr>
                                            <!-- <th></th> -->
                                            <th>Evento</th>
                                            <th>Cliente</th>
                                            <th>Lugar</th>
                                            <th>
                                                <!-- <th>Presupuesto</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Fiesta de 15</td>
                                            <td>Juan Perez</td>
                                            <td>CABA</td>
                                            <td><a href="adminevent.html">
                                                <button class="btn btn-primary"><i class="fa fa-plus" style="padding-right: 10px;"></i>Administrar</button></a></td>
                                            <!-- <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100" style="width: 27%">
                          </div>
                        </div>
                        <span class="sr-only">73%</span>
                      </td> -->
                                        </tr>
                                        <tr>
                                            <td>Casamiento</td>
                                            <td>Alejandra Romez</td>
                                            <td>Ing. Maschwitz</td>
                                            <td><a href="adminevent.html">
                                                <button class="btn btn-primary"><i class="fa fa-plus" style="padding-right: 10px;"></i>Administrar</button></a></td>
                                            <!-- <td>
                        <div class="progress thin">
                          <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="width: 57%">
                          </div>
                          <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="43" aria-valuemin="0" aria-valuemax="100" style="width: 43%">
                          </div>
                        </div>
                        <span class="sr-only">57%</span>
                      </td> -->
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
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
