<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pprincipal.aspx.cs" Inherits="Pprincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>EV: Planifica tu evento</title>
    <link rel="icon" href="demo_icon.ico" sizes="72x72">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet"/>
    <link href="css/styleMio.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">EVENTO</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#about">Cod. invitación</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="Login.aspx">Ingresa</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="CrearCuenta.aspx">Crea tu cuenta</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header class="masthead text-center text-white d-flex">
            <div class="container my-auto">
                <div class="row">
                    <div class="col-lg-10 mx-auto">
                        <h1 class="text-uppercase">
                            <strong>El mejor lugar para planificar tu evento</strong>
                        </h1>
                        <hr>
                    </div>
                    <div class="col-lg-8 mx-auto">
                        <p class="text-faded mb-5">DEJALO EN NUESTRAS MANOS!</p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#services">Más de nosotros</a>
                    </div>
                </div>
            </div>
        </header>

        <section class="bg-primary" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <h2 class="section-heading text-white">Ingresa tu código de invitado!</h2>
                        <hr class="light my-4">
                        <input class="center-block"/>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Entrar</a>
                    </div>
                </div>
            </div>
        </section>

        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Nuestros Servicios</h2>
                        <hr class="my-4">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-check-square text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Control de asistencia</h3>
                            <p class="text-muted mb-0">Llevar un control de invitados y asistentes cómodo.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-thumb-tack text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Ubicacion de invitados</h3>
                            <p class="text-muted mb-0">Situar los invitados o participantes del evento de forma ordenada y facil.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Red social del evento</h3>
                            <p class="text-muted mb-0">Mantén el contacto con tus invitados mediante tu propia red social.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-facebook text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Conexion con otras redes sociales</h3>
                            <p class="text-muted mb-0">Siempre vas a poder compartir lo de tu red social en las redes sociales más usadas.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="p-0" id="portfolio">
            <div class="container-fluid p-0">
                <div class="row no-gutters popup-gallery">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/1.jpg">
                            <img class="img-fluid" src="img/landing/5.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                    <div class="project-name">
                                        VIAJES DE EGRESADOS
                                    </div>
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/2.jpg">
                            <img class="img-fluid" src="img/landing/4.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                    <div class="project-name">
                                        EVENTOS FORMALES
                                    </div>
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/3.jpg">
                            <img class="img-fluid" src="img/landing/32.jpg" alt=""/>
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                    <div class="project-name">
                                        EVENTOS INFORMALES
                                    </div>
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/4.jpg">
                            <img class="img-fluid" src="img/landing/8.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                    <div class="project-name">
                                        CASAMIENTOS
                                    </div>
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/5.jpg">
                            <img class="img-fluid" src="img/landing/7.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                    <div class="project-name">
                                        CONFERENCIAS O PRESENTACIONES
                                    </div>
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/6.jpg">
                            <img class="img-fluid" src="img/landing/9.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                    <div class="project-name">
                                        FIESTAS
                                    </div>
                                    <div class="project-category text-faded">
                                        -
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="bg-dark text-white">
            <div class="container text-center">
                <h2 class="mb-4">Se parte de nuestra comunidad!</h2>
                <a class="btn btn-light btn-xl sr-button" href="CrearCuenta.aspx">Registrarse</a>
            </div>
        </section>

        <section id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <h2 class="section-heading">Mantengamonos en contacto!</h2>
                        <hr class="my-4">
                        <p class="mb-5">Si tenes alguna duda o comentario no dudes en contactarnos por medios más personales. Gracias por contar con nosotros.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center">
                        <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
                        <p>123-456-6789</p>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
                        <p>
                            <a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/creative.min.js"></script>
    </form>
</body>
</html>
