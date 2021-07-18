<%-- 
    Document   : Venta
    Created on : Jul 18, 2021, 4:56:15 PM
    Author     : toni
--%>

<%@page import="vista.Presentador"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="c" %>

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
        <title>Nueva Compra</title>

    </head>

    <body class=" ">



        <main class="container-fluid p-0">
            <jsp:include page="nav.jsp" />  
            <% Presentador p = (Presentador) session.getAttribute("p"); %>
            <% Object[] datos = p.getDatos();%>


            <div class="row">
                <div class="col-12">
                    <h1 class="fw-bold text-center text-primary my-5">Nota de La Venta</h1>
                </div>
                <div class="col-12 col-md-4 d-flex justify-content-center ">
                    <div class="card shadow  bg-body rounded border-1">
                        <div class="d-flex justify-content-center">
                            <img src="img/logo.png" class="img-fluid w-50" style="" alt="">
                        </div>

                        <div class="card-body">
                            <div class="input-group input-group-lg my-md-3">
                                <span class="input-group-text" id="inputGroup-sizing-lg" style="width: 125px;">Número</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg " value="<%=datos[0]%>">
                            </div>
                            <div class="input-group input-group-lg my-md-3">
                                <span class="input-group-text" id="inputGroup-sizing-lg " style="width: 125px;">Fecha</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg " value="<%=datos[1]%>">
                            </div>
                            <div class="input-group input-group-lg my-md-3">
                                <span class="input-group-text" id="inputGroup-sizing-lg" style="width: 125px;">Empleado</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg " value="<%=datos[2]%>">


                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-7">
                    <table class="table table-light table-striped shadow  bg-body rounded border-1">

                        <thead>
                            <tr>
                                <th scope="col">Código</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Precio</th>
                                <th scope="col">Cantidad</th>
                                <th scope="col">Importe</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%! String tot;%>
                            <%! String codC = "";%>
                            <%! String nomC = "";%>
                            <%! Double preCo = 0.0;%>
                            <% for (int i = 0; i < p.getDetalleLista().size(); i++) { %> 
                            <% Object[] test2 = (Object[]) p.getDetalleLista().get(i);%>
                            <% if (test2[5] != test2[3]) {
                                    preCo = Double.parseDouble(test2[2].toString()) - (Double.parseDouble(test2[2].toString()) * 0.2);

                                }%>
                            <% if (test2[5] == test2[3]) {
                                     break;
                                 }%>


                            <tr>
                        <form action="../CompraControl" method="post">
                            <th scope="row">
                                <input type="text" name="cod" value="<%= test2[0]%>" class="form-control  "   readonly>

                            </th>
                            <td>
                                <input type="text" name="nom" value="<%= test2[1]%>" class="form-control  "   readonly>
                            </td>
                            <td>
                                <div class="input-group mb-3 " >
                                    <span class="input-group-text">S/.</span>
                                    <input type="text" name="pre" value="<%= test2[2]%>" class="form-control "  readonly>

                                </div>
                            </td>
                            
                            <td>
                                <input type="text" name="can" value="<%= test2[3]%>" class="form-control text-center "   readonly>
                            </td>
                            <td>
                                <div class="input-group mb-3 " >
                                    <span class="input-group-text">S/.</span>
                                    <input type="text" name="pre" value="<%= test2[4]%>" class="form-control "  readonly>

                                </div>
                            </td>
                            <td>
                                <input type="submit" name="acc" value="Quitar" class=" btn btn-danger">
                            </td>
                        </form>
                        </tr>
                        <% if (test2[5] != test2[3]) {
                                tot = test2[5].toString();
                            }%>
                        <% }%>  


                        </tbody>
                    </table>
                </div>
                <div class="col-12 col-md-4 d-flex justify-content-center my-5 ">
                    <div class="card shadow  bg-body rounded border-1">
                        <div class="card-body ">
                            <% Object[] pro = p.getBusPro();%>

                            <h4 class="card-title text-center fw-bold text-primary">Cliente</h4>
                            <c:form action="VentaControl">

                                <div class="input-group mb-3">
                                    <input type="hidden" name="cod" value="<%=datos[2]%>">

                                    <c:text property="dni" styleClass="form-control" />
                                    <c:submit value="Buscar Dni" property="acc" styleClass="btn btn-secondary w-100"/>

                                </div>
                                <div class="input-group input-group-lg my-md-3">
                                    <span class="input-group-text" id="inputGroup-sizing-lg " style="width: 125px;">Nombre</span>
                                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" value= '<%= pro[0]%>'>
                                </div>
                                <div class="input-group input-group-lg my-md-3">
                                    <span class="input-group-text" id="inputGroup-sizing-lg" style="width: 125px;">Código</span>
                                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" value='<%= pro[1]%>' >
                                </div>
                            </c:form>

                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 d-flex justify-content-start my-5 align-self-end ">
                    <div class="card shadow  bg-body rounded border-1">

                        <div class="card-body  d-flex">
                            <a href="#listar" class="btn btn-secondary mx-5 fw-bold " >Listar</a>

                            <form action="../CompraControl" method="post" class=" ">
                                <input type="hidden" name="cod"  value="">
                                <input type="submit" name="acc" class="btn btn-secondary  mx-5 fw-bold " value="Nuevo">
                                <input type="submit" name="acc" class="btn btn-secondary mx-5 fw-bold " value="Grabar">

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-3 d-flex justify-content-end my-5 align-self-end ">
                    <div class="card shadow  bg-body rounded border-1">

                        <div class="card-body   ">
                            <div class="input-group input-group ">
                                <span class="input-group-text" id="inputGroup-sizing-lg " style="width: 80px;">Total</span>
                                <span class="input-group-text">S/.</span>

                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" value="<%= tot %>">
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-5 m-auto d-flex justify-content-center align-items-center  flex-column" style="height: 100vh"  id="listar">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de articulos</h1>
                    <% List lisA = (List) session.getAttribute("lisA");%>

                    <form action="../CompraControl" method="post">
                        <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
                            <thead>
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Accion</th>
                                </tr>
                            </thead>

                            <tbody>

                                <% for (int i = 0; i < lisA.size(); i++) { %>

                                <% Object[] f = (Object[]) lisA.get(i);%>
                                <tr class="">
                                    <c:form action="VentaControl">

                                        <th scope="row">
                                            <input type="text" name="codi" value="<%= f[0]%>" class="form-control text-center" style="width: 100px" readonly>
                                        </th>
                                        <td>
                                            <input type="text" name="nom" value="<%= f[1]%>" class="form-control text-center " style="width: 250px" readonly>
                                        </td>
                                        <td>
                                            <div class="input-group mb-3 " style="width: 120px">
                                                <span class="input-group-text">S/.</span>
                                                <input type="text" name="pre" value="<%= f[2]%>" class="form-control " readonly>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="number" name="can" required value="" class="form-control " style="width: 120px">
                                        </td>
                                        <td>
                                            <input type="hidden" name="cod" value="<%=datos[2]%>">

                                            <c:submit value="Agregar" property="acc" styleClass="btn btn-success"/>

                                        </td>
                                    </c:form>
                                </tr>

                                <% }%>




                            </tbody>
                        </table>
                    </form>
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
