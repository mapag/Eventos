<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invitados.aspx.cs" Inherits="Invitados" %>

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
    <section id="container" class="">


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
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Invitados</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">HOME</a></li>
                            <li><i class="fa fa-laptop"></i>Invitados</li>
                            <li><i class="fa fa-laptop"></i>Crear</li>
                        </ol>
                    </div>
                </div>

                <a href="crearEvento.html">
                    <button type="submit" class="btn btn-primary" style="margin-bottom: 30px;"><i class="fa fa-plus" style="padding-right: 10px;"></i>Agregar Invitado</button></a>

                <!-- EVENTOS ACTIVOS -->
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading" style="text-align: center;">
                                INVITADOS ACTIVOS
                            </header>

                            <table class="table table-striped table-advance table-hover">
                                <tbody>
                                    <tr>
                                        <th><i class="icon_profile"></i>Full Name</th>
                                        <th><i class="icon_calendar"></i>Date</th>
                                        <th><i class="icon_mail_alt"></i>Email</th>
                                        <th><i class="icon_pin_alt"></i>City</th>
                                        <th><i class="icon_mobile"></i>Mobile</th>
                                        <th><i class="icon_cogs"></i>Action</th>
                                    </tr>
                                    <tr>
                                        <td>Angeline Mcclain</td>
                                        <td>2004-07-06</td>
                                        <td>dale@chief.info</td>
                                        <td>Rosser</td>
                                        <td>176-026-5992</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Sung Carlson</td>
                                        <td>2011-01-10</td>
                                        <td>ione.gisela@high.org</td>
                                        <td>Robert Lee</td>
                                        <td>724-639-4784</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Bryon Osborne</td>
                                        <td>2006-10-29</td>
                                        <td>sol.raleigh@language.edu</td>
                                        <td>York</td>
                                        <td>180-456-0056</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Dalia Marquez</td>
                                        <td>2011-12-15</td>
                                        <td>angeline.frieda@thick.com</td>
                                        <td>Alton</td>
                                        <td>690-601-1922</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Selina Fitzgerald</td>
                                        <td>2003-01-06</td>
                                        <td>moshe.mikel@parcelpart.info</td>
                                        <td>Waelder</td>
                                        <td>922-810-0915</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Abraham Avery</td>
                                        <td>2006-07-14</td>
                                        <td>harvey.jared@pullpump.org</td>
                                        <td>Harker Heights</td>
                                        <td>511-175-7115</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Caren Mcdowell</td>
                                        <td>2002-03-29</td>
                                        <td>valeria@hookhope.org</td>
                                        <td>Blackwell</td>
                                        <td>970-147-5550</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Owen Bingham</td>
                                        <td>2013-04-06</td>
                                        <td>thomas.christopher@firstfish.info</td>
                                        <td>Rule</td>
                                        <td>934-118-6046</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Ahmed Dean</td>
                                        <td>2008-03-19</td>
                                        <td>lakesha.geri.allene@recordred.com</td>
                                        <td>Darrouzett</td>
                                        <td>338-081-8817</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mario Norris</td>
                                        <td>2010-02-08</td>
                                        <td>mildred@hour.info</td>
                                        <td>Amarillo</td>
                                        <td>945-547-5302</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                                <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                    </div>
                </div>
            </section>
        </section>
        <!--main content end-->
    </section>
    <!-- container section start -->

    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui-1.10.4.min.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js"></script>
    <!-- jQuery full calendar -->
    <<script src="js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
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
