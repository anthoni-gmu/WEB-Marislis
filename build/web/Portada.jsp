<%-- 
    Document   : Portada
    Created on : Jul 10, 2021, 7:09:01 PM
    Author     : toni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estilos.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
    <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet">
    <title>Marilis</title>

</head>

<body class=" ">
    <main class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom border-3 fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand mx-5" href="../index.html"><img src="./img/logo.png" style="height: 60px;" alt=""></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse  " id="navbarSupportedContent">
                    <div class="container-fluid  ">
                        <div class="row d-flex flex-row">
                            <div class="col-7">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center align-items-lg-end justify-content-center justify-content-lg-end w-100">
                                    <li class=" nav-item mx-3">
                                        <a class="nav-link fw-bold text-dark  " aria-current="page" href="/index.html"><i
                                                class="fas fa-concierge-bell d-flex align-items-start justify-content-center w-100"></i>
                                            Inicio</a>
                                    </li>
                                    <li class="nav-item mx-3  ">
                                        <a class="nav-link fw-bold text-dark  " aria-current="page" href="#"><i
                                                class="fas fa-birthday-cake d-flex align-items-start justify-content-center w-100"></i>
                                            Productos</a>
                                    </li>
                                    <li class="nav-item mx-3 ">
                                        <a class="nav-link fw-bold text-dark  " aria-current="page" href="#"><i
                                                class="fas fa-info-circle d-flex align-items-start justify-content-center w-100"></i>
                                            Informacion</a>
                                    </li>
                                    <li class="nav-item mx-3 ">
                                        <a class="nav-link  fw-bold text-dark " aria-current="page" href="#"><i
                                                class="fas fa-id-card-alt d-flex align-items-start justify-content-center w-100"></i>
                                            Contacto</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-5">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center align-items-lg-end justify-content-center justify-content-lg-end w-100">
                                    <li class="  nav-item mx-3 login text-center ">
                                        <button type="button" class="btn btn-secondary btn-lg text-primary" ><a href="Login.jsp">Administrador</a> </button>
                                    </li>

                                    <li class="login nav-item mx-3  ">
                                        <a class="nav-link   cart " aria-current="page" href="#"><i
                                                class="fas fa-shopping-cart d-flex align-items-center justify-content-center w-100"></i>Carrito</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="row bg-info ">
            <div class="col-12 col-md-6 d-flex flex-column my-md-5 py-md-5 align-items-center justify-content-center my-2">
                <h1 class="my-md-5 fw-bold" style="font-size: 72px;">Tortas de <br> ensueño!</h1>
                <p style="font-size: 18px;">En Maralis encontras las tortas que siempre <br> soñaste ¡Descubre todas nuestras opciones!</p>
                <button type="button" class="btn btn-primary btn-lg">Ver más</button>
            </div>
            <div class="col-12 col-md-6 d-flex align-items-start justify-content-center my-md-5 py-md-5 my-2">
                <img src="img/portada.png" class="img-fluid" alt="">
            </div>
        </div>
        <div class="row test ">
            <div class="col-12 d-flex flex-column align-items-center justify-content-center">
                <h1 class="my-4 text-light fw-bold">Lo mejor de lo mejor</h1>
                <p class="my-4 text-light">De lunes a sabado de 8:00 am a 6:00 pm</p>
            </div>
            <div class="col-12 d-flex justify-content-around w-100">
                <div class="row">
                    <div class="col-6 my-5 col-md-2 mx-md-5">
                        <a class="hexagono">
                            <span class="hexagono-content text-dark">
                                <h3><i class="fa fa-percentage h1"></i></h3>
                                <h6> Los mejores precios y
                                    ofertas</h6>
                            </span>
                        </a>
                    </div>
                    <div class="col-6 my-5 col-md-2  mx-md-5  ">
                        <a class="hexagono">
                            <span class="hexagono-content text-dark">
                                <h3><i class="fa fa-birthday-cake h1"></i></h3>
                                <h6> Todos los sabores </h6>
                            </span>
                        </a>
                    </div>
                    <div class="col-6 my-5 col-md-2 mx-md-5  ">
                        <a class="hexagono">
                            <span class="hexagono-content text-dark ">
                                <h3><i class="fa fa-truck h2"></i></h3>
                                <h6> Delivery el mismo día para Lima</h6>
                            </span>
                        </a>
                    </div>
                    <div class="col-6 my-5 col-md-2 mx-md-5  ">
                        <a class="hexagono  ">
                            <span class="hexagono-content text-dark ">
                                <h3><i class="fa fa-cc-visa h1"></i></h3>
                                <h6> Pago rapido y seguro</h6>
                            </span>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="row mt-md-5">
            <div class="col-12 mt-md-5 ">
                <h1 class="mx-5 text-center fw-bold">Categorias</h1>
                <div class="row d-flex justify-content-center">
                    <div class="col-12 col-md-6 d-flex justify-content-center my-md-5  ">
                        <a href="" class="nav-link text-dark card-hover">
                            <div class="card categoria-item bg-warning px-3 pt-3 border-0">
                                <div class="caja1 ">
                                    <img src="img/cumple.png " class="card-img-top " alt="...">
                                </div>

                                <div class="card-body bg-light">
                                    <h3 class="fw-bold">Cumpleaños</h3>
                                    <h6>Para todas las edades!</h5>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-12 col-md-6 d-flex justify-content-center my-md-5  ">
                        <a href="" class="nav-link text-dark card-hover">
                            <div class="card categoria-item bg-danger px-3 pt-3 border-0">
                                <div class="caja1 ">
                                    <img src="img/celebraciones.png " class="card-img-top " alt="...">
                                </div>

                                <div class="card-body bg-light">
                                    <h3 class="fw-bold">Celebraciones</h3>
                                    <h6>Para todas las ocaciones</h5>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-12 col-md-6 d-flex justify-content-center my-md-5 ">
                        <a href="" class="nav-link text-dark card-hover">
                            <div class="card categoria-item bg-warning px-3 pt-3 border-0">
                                <div class="caja1 ">
                                    <img src="img/primer.png " class="card-img-top " alt="...">
                                </div>

                                <div class="card-body bg-light">
                                    <h3 class="fw-bold">Primer año</h3>
                                    <h6>Regala amor</h5>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-12 col-md-6 d-flex justify-content-center my-md-5 ">
                        <a href="" class="nav-link text-dark card-hover">
                            <div class="card categoria-item bg-danger px-3 pt-3 border-0">
                                <div class="caja1 ">
                                    <img src="img/moustros.png" class="card-img-top " alt="...">
                                </div>

                                <div class="card-body bg-light">
                                    <h3 class="fw-bold">Moustruos</h3>
                                    <h6>Que no te de miedo!</h5>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row my-md-5">
            <div class="col-12 d-flex flex-column justify-content-center align-items-center">
                <h1 class="fw-bold">Encuentra tu torta!</h1>
                <button type="button" class="btn btn-primary btn-lg my-md-3">Ver productos</button>
            </div>
        </div>
        <footer class="bg-dark text-white text-center text-lg-start">
            <div class="container p-4">
                <div class="row">
                    <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                        <h5 class="text-uppercase"><img src="img/logo.png" alt="" style="height: 80px;"></h5>
                        <p>
                            Nuestras tortas, son elaboradas bajo estrictas normas sanitarias y sobre todo con insumos calificados que permiten otorgarle a nuestro cliente lo mejor
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Redes</h5>
                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">facebook</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">instagram</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">youtube</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">twiter</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase mb-0">Contacto</h5>
                        <ul class="list-unstyled">
                            <li>
                                <p>hello@maralis.pe</p>
                            </li>
                            <li>
                                <p>+91 98765 43210</p>
                            </li>
                            <li>
                                <p>Av. General Garzón 1611, Jesús María, Lima, Perú</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                © 2021 maralis todos los derechos reservados
            </div>
        </footer>
    </main>
</body>

</html>