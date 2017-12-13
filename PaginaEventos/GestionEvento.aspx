<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestionEvento.aspx.cs" Inherits="GestionEvento" %>

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
                        <h3 class="page-header"><i class="fa fa-laptop"></i>GestionEvento</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="Inicio.aspx">Inicio</a></li>
                            <li><i class="fa fa-users"></i><a href="GestionEvento.aspx">GestionEvento</a></li>
                        </ol>
                    </div>
                </div>
            </section>
            <section class="wrapper">
                <asp:LinkButton ID="btn_gestionmesas" CssClass="btn btn-primary" PostBackUrl="~/GestionMesas.aspx" Style="margin-bottom:20px" Visible="false" runat="server"><i class="fa fa-bars" style="margin-right: 10px;"></i>Gestionar Mesas</asp:LinkButton>
                <asp:LinkButton ID="btn_invitar" CssClass="btn btn-primary" PostBackUrl="~/CrearInvitacion.aspx" Style="margin-bottom:20px" Visible="false" runat="server"><i class="fa fa-plus" style="margin-right: 10px;"></i>Invitar a alguien</asp:LinkButton>
          
                <asp:GridView ID="grd_invitados" runat="server" CssClass="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grd_invitados_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:Button ID="btn_promocion" runat="server" CssClass="btn btn-info" Text="Promocionar a Administrador" OnClick="btn_promocion_Click" Visible="false" />
                <asp:Button ID="btn_noinvitar" runat="server" CssClass="btn btn-danger" Text="Eliminar Invitación" OnClick="btn_noinvitar_Click" Visible="false" />
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
