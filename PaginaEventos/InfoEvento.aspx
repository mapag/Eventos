<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoEvento.aspx.cs" Inherits="InfoEvento" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <!-- Custom styles -->
    <link href="css/widgets.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
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

        <!--BARRA LATERAL start
        <script src="js/barraLateral.js"></script>
        BARRA LATERAL end-->



        <!--CONTENIDO start -->
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Información del Evento</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="Inicio.aspx">Inicio</a></li>
                            <li><i class="fa fa-users"></i><a href="GestionEvento.aspx">Gestion Evento</a></li>
                            <li><i class="fa fa-info-circle"></i><a href="InfoEvento.aspx">Información</a></li>
                        </ol>
                    </div>
                </div>
            </section>

            <section class="wrapper">
                <asp:HiddenField ID="Confirmados" runat="server" />
                <asp:HiddenField ID="NoConfirmados" runat="server" /> 
                <div class="col-lg-4">
                    <section class="panel">
                        <header class="panel-heading">
                            Invitados Confirmados
                        </header>
                        <div class="panel-body text-center">
                            <canvas id="pie" style="overflow:hidden;" height="300" width="400"></canvas>
                        </div>
                    </section>
                </div>
                <div class="col-lg-3">
                    <section class="panel">
                        <header class="panel-heading">
                            Faltan Confirmar:
                        </header>
                        <div class="panel-body text-center">
                            <ul style="text-align: left; font-size: 20px;">
                                <li>Jorge Lopez</li>
                                <li>Mateo Pagniez</li>
                                <li>Lautaro Rodriguez</li>
                            </ul>
                        </div>
                    </section>
                </div>
                <div class="col-sm-3">
                    <div class="well">
                        <h1 style="margin-bottom: 30px;">Mesa 2</h1>
                        <ul>
                            <li style="font-size: 20px;"><i class="fa fa-check-square"></i>Jorge Lopez</li>
                            <li style="font-size: 20px;"><i class="fa fa-check-square-o"></i>Mateo Pagniez</li>
                            <li style="font-size: 20px;"><i class="fa fa-check-square"></i>Lautaro Rodriguez</li>
                        </ul>

                        <hr />
                        <h3><a class="btn btn-default" href="#"><i class="icon-ok"></i>Modificar Mesa</a></h3>
                    </div>
                </div>
            </section>

            <!--CONTENIDO end -->
        </section>
        <!-- container section start -->
    </form>
    <!-- javascripts -->
    <script src="assets/chart-master/Chart.js"></script>
    <!-- custom chart script for this page only-->
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

        //pie
        $(document).ready(function () {
            var confirmados = parseInt(document.getElementById('Confirmados').value);
            var noconfirmados = parseInt(document.getElementById('NoConfirmados').value);
            var pieData = [
        {
            value: confirmados,
            color: "#3f9c35"
        },
        {
            value: noconfirmados,
            color: "#cc0000"
        }];
            new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);
        });
    </script>
</body>
</html>
