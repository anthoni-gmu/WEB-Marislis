<%-- 
    Document   : Menu
    Created on : Jul 10, 2021, 7:15:14 PM
    Author     : toni
--%>




<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/test.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
        </script>
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet">
        <title>Portal Empleado</title>

    </head>

    <body >

        <main class="container-fluid p-0">
            <% Object[] fil = (Object[]) session.getAttribute("fill");%>
            <jsp:include page="nav.jsp" />  
            <div class="row d-flex  justify-content-lg-center align-items-center mx-auto xd" style="height: 70vh" >
                <h1 class="fw-bold text-center text-primary">Bienvenido <%=fil[1]%></h1>

                <div class="col-5 col-md-5   " >
                    <div class="accordion w-100 shadow  bg-body rounded border-1"  id="accordionExample">
                        <div class="accordion-item ">
                            <h2 class="accordion-header " id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Archivos
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <div class="btn-group d-flex align-self-center justify-content-center" role="group" aria-label="Basic example">
                                        <form action="../EmpleadoControl" method="post">
                                            <input type="submit" name="acc" class="btn btn-primary btn-lg mx-3 my-5 " value="Empleado">
                                        </form>
                                        <form action="../ClienteControl" method="post">
                                            <input type="submit" name="acc" class="btn btn-primary btn-lg mx-3 my-5 " value="Clientes">
                                        </form>
                                        <form action="../ArticuloControl" method="post">
                                            <input type="submit" name="acc" class="btn btn-primary btn-lg mx-3 my-5 " value="Articulo">
                                        </form>
                                        <form action="../ProveedorControl" method="post">
                                            <input type="submit" name="acc" class="btn btn-primary btn-lg mx-3 my-5 " value="Proveedor">
                                        </form>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Procesos
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                <div class="accordion-body d-flex align-self-center justify-content-center">
                                    <form action="../PedidoControl" method="post">
                                        <input type="hidden" name="cod" value="<%=fil[0]%>">
                                        <input type="submit" name="acc" class="btn btn-primary btn-lg mx-3 my-5" value="Nuevo Pedido">

                                    </form>
                                    <form action="../CompraControl" method="post">
                                        <input type="hidden" name="cod" value="<%=fil[0]%>">
                                        <input type="submit" name="acc" class="btn btn-primary btn-lg mx-3 my-5" value="Nueva compra">

                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Consultas
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <button type="button" class="btn btn-primary">Left</button>
                                    <button type="button" class="btn btn-primary">Middle</button>
                                    <button type="button" class="btn btn-primary">Right</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

            <footer class="bg-dark text-white text-center text-lg-start ">
                <div class="container p-4">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                            <h5 class="text-uppercase"><img src="../img/logo.png" alt="" style="height: 80px;"></h5>
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