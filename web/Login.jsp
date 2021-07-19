<%-- 
    Document   : Login
    Created on : Jul 10, 2021, 7:12:04 PM
    Author     : toni
--%>

<%@page import="vista.Presentador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="x" %>
<% Presentador p = (Presentador) session.getAttribute("p"); %>

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
        <title>Ingresar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


    </head>

    <body class=" ">
        <main class="container-fluid p-0">
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom border-3 sticky-top">
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
                                            <button type="button" class="btn btn-secondary btn-lg text-primary">Administrador</button>
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
            <div class="row">
                <div class="col-12">

                    <div class="row d-flex align-items-center justify-content-center   ">
                        <div class="col-12 col-md-8 my-md-5  ">
                            <div class="card mb-md-3 shadow p-3 mb-5 bg-body rounded border-3 ">
                                <div class="row g-0">
                                    <div class="col-md-6 ">
                                        <img class="img-fluid" src="https://image.freepik.com/vector-gratis/linda-pareja-barista-delantal-pie-brazos-cruzados-ilustracion-personaje-dibujos-animados_56104-425.jpg" alt="...">
                                    </div>
                                    <div class="col-md-6 bg-secondary ">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-center flex-column">
                                                <img src="./img/logo.png" class="img-fluid " alt="">
                                                <h1 class="text-dark text-center fw-bolder">Iniciar Sesión</h1>
                                            </div>

                                            <div>
                                                <x:form action="AccesoControl" method="post">

                                                    <div class="input-group input-group-lg my-5 ">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg" style="width:140px">Usuario</span>
                                                        <x:text property="usu" styleClass="form-control"/>
                                                    </div>
                                                    <div class="input-group input-group-lg my-5 ">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg " style="width:140px">Constraseña</span>
                                                        <x:text property="pas" styleClass="form-control"/>
                                                    </div>
                                                    <% if (p.getMsg().toString() != "") {%>
                                                    <div class="alert bg-danger alert-warning alert-dismissible fade show" role="alert">
                                                        <h4 class="fw-bold text-center text-dark my-5"><%=p.getMsg()%></h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                    </div>
                                                    <% p.setMsg(""); %>

                                                    <% }%>
                                                    <div class="input-group input-group-lg my-5 ">
                                                        <x:submit value="Iniciar" styleClass="btn w-100 btn-primary fw-bold"/>
                                                    </div>
                                                </x:form>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-center flex-column">
                                                <% if (p.getMsg().toString() != "") {%>
                                                <div class="alert bg-danger alert-warning alert-dismissible fade show" role="alert">
                                                    <h4 class="fw-bold text-center text-dark my-5"><%=p.getMsg()%></h4>
                                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                </div>
                                                <% p.setMsg(""); %>

                                                <% }%>
                                                <a class="text-dark" href="">Recuperar contraseña</a>
                                                <a class="text-dark" href="RegistrarEmpleado.jsp">Registrar</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0 ">
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
        <title>Ingresar</title>

    </head>

    <body class=" ">
        <main class="container-fluid p-0">
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom border-3 sticky-top">
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
                                            <button type="button" class="btn btn-secondary btn-lg text-primary">Administrador</button>
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
            <div class="row">
                <div class="col-12">
                    <div class="row d-flex align-items-center justify-content-center   ">
                        <div class="col-12 col-md-8 my-md-5  ">
                            <div class="card mb-md-3 shadow p-3 mb-5 bg-body rounded border-3 ">
                                <div class="row g-0">
                                    <div class="col-md-6 ">
                                        <img class="img-fluid" src="https://image.freepik.com/vector-gratis/linda-pareja-barista-delantal-pie-brazos-cruzados-ilustracion-personaje-dibujos-animados_56104-425.jpg" alt="...">
                                    </div>
                                    <div class="col-md-6 bg-secondary ">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center justify-content-center flex-column">
                                                <img src="./img/logo.png" class="img-fluid " alt="">
                                                <h1 class="text-dark text-center fw-bolder">Iniciar Sesión</h1>
                                            </div>

                                            <div>
                                                <form action="EmpleadoControl" method="post">
                                                    <div class="input-group input-group-lg my-5 ">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg" style="width:140px">Usuario</span>
                                                        <input type="text" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                                                    </div>
                                                    <div class="input-group input-group-lg my-5 ">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg " style="width:140px">Constraseña</span>
                                                        <input type="password" required class="form-control" name="pas" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                                                    </div>
                                                    <div class="input-group input-group-lg my-5 ">
                                                        <input type="submit" name="acc" value="Iniciar" class="btn w-100 btn-primary fw-bold">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-center flex-column">
                                                <a class="text-dark" href="">Recuperar contraseña</a>
                                                <a class="text-dark" href="RegistrarEmpleado.jsp">Registrar</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                        <div class="col-lg-3 col-md-6 mb-4 mb-md-0 ">
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
