<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Administrador" %>

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
    <link rel="icon" href="demo_icon.ico" sizes="72x72" />

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
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Inicio</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="Inicio.aspx">Inicio</a></li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box blue-bg">
                            <i class="fa fa-calendar"></i>
                            <div class="count">
                                <asp:Label ID="lbl_EventosActivos" runat="server" Text="30"></asp:Label>
                            </div>
                            <div class="title">Eventos Activos</div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box dark-bg">
                            <i class="fa fa-calendar"></i>
                            <div class="count">
                                <asp:Label ID="lbl_EventosTotales" runat="server" Text="50"></asp:Label>
                            </div>
                            <div class="title">Eventos Totales</div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box brown-bg">
                            <i class="fa fa-user"></i>
                            <div class="count">
                                <asp:Label ID="lbl_ClientesActivos" runat="server" Text="70"></asp:Label>
                            </div>
                            <div class="title">Clientes Activos</div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box green-bg">
                            <i class="fa fa-user"></i>
                            <div class="count">
                                <asp:Label ID="lbl_ClientesTotales" runat="server" Text="90"></asp:Label>
                            </div>
                            <div class="title">Clientes Totales</div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-1"></div>
                <div class="col-lg-3">
                    <section class="panel">
                        <header class="panel-heading" style="text-align: center;">
                            Eventos Activos
                        </header>
                        <div class="panel-body text-center">
                            <canvas id="pieEve" height="300" width="400"></canvas>
                        </div>
                    </section>
                </div>
                <div class="col-lg-3"></div>
                <div class="col-lg-3">
                    <section class="panel">
                        <header class="panel-heading" style="text-align: center;">
                            Eventos Activos
                        </header>
                        <div class="panel-body text-center">
                            <canvas id="pieCli" height="300" width="400"></canvas>
                        </div>
                    </section>
                </div>
            </section>

            <section class="wrapper">
                <h1>Eventos</h1>
                <asp:GridView ID="grd_eventos" runat="server" class="table table-responsive" CellPadding="4" GridLines="None" ForeColor="#333333" PageSize="4" CaptionAlign="Bottom" OnRowDeleting="BorrarFila" OnSelectedIndexChanged="EditarFila">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="#000000" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

                <asp:Label ID="noBorrar" runat="server" Text=""></asp:Label>
            </section>

            <section class="wrapper">
                <h1>Clientes</h1>
                <asp:GridView ID="grd_clientes" runat="server" class="table table-responsive" CellPadding="4" GridLines="None" ForeColor="#333333" PageSize="4" CaptionAlign="Bottom">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="#000000" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

                <asp:Label ID="noBorrarCli" runat="server" Text=""></asp:Label>
            </section>
        </section>
        <!--CONTENIDO end -->
    </form>
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

        //pie
        $(document).ready(function () {


            var pieData = [
        {
            value: 12,
            color: "#1a2732"
        }, {
            value: 5,
            color: "#57889c"
        }
            ];
            new Chart(document.getElementById("pieEve").getContext("2d")).Pie(pieData);
        });

        $(document).ready(function () {


            var pieData = [
        {
            value: 17,
            color: "#26c281"
        }, {
            value: 5,
            color: "#d1b993"
        }
            ];
            new Chart(document.getElementById("pieCli").getContext("2d")).Pie(pieData);
        });
    </script>
</body>
</html>
