<%-- 
    Document   : nav
    Created on : 25/05/2021, 05:46:04 PM
    Author     : Anthoni
--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="p" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% Object[] fil = (Object[]) session.getAttribute("fill");%>

<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom border-3 sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand d-flex justify-content-center w-25 " href="PortalEmpleado.jsp"><img src="img/logo.png" class="" style="height: 60px;" alt="">     
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
            <div class="container-fluid  ">
                <div class="row d-flex flex-row">
                    <div class="col-7">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center align-items-lg-end justify-content-center justify-content-lg-center w-100">
                            <li class="nav-item mx-md-5 my-2  ">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-secondary dropdown-toggle btn-lg" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
                                        Archivos
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start">
                                        <li><form action="../EmpleadoControl" method="post">
                                                <input type="submit" name="acc" class="btn-secondary btn-lg w-100 dropdown-item" value="Empleado">
                                            </form>
                                        </li>
                                        <li>
                                            <p:form action="ClienteControl" method="post">
                                                <p:hidden property="dni" value="1111" />
                                                <p:submit value="Cliente" property="acc" styleClass="btn-secondary btn-lg w-100 dropdown-item"/>
                                            </p:form>
                                        </li>
                                        <li>
                                            <p:form action="ArticuloControl" method="post">
                                                <p:hidden property="cod" value="A001" />
                                                <p:submit value="Articulo" property="acc" styleClass="btn-secondary btn-lg w-100 dropdown-item"/>
                                            </p:form>
                                        </li>
                                        <li>
                                            <p:form action="ProveedorControl" method="post">
                                                <p:hidden property="ruc" value="1111" />
                                                <p:submit value="Proveedor" property="acc" styleClass="btn-secondary btn-lg w-100 dropdown-item"/>
                                            </p:form>
                                        </li>  
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item mx-md-5 my-2  ">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-secondary dropdown-toggle btn-lg" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
                                        Procesos
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start">
                                        <li>
                                            <form action="../PedidoControl" method="post">
                                                <input type="hidden" name="cod" value="<%=fil[0]%>">
                                                <input type="submit" name="acc" class="btn-secondary btn-lg w-100 dropdown-item" value="Nuevo Pedido">

                                            </form>
                                        </li>
                                        <li><form action="../CompraControl" method="post">
                                                <input type="hidden" name="cod" value="<%=fil[0]%>">
                                                <input type="submit" name="acc" class="btn-secondary btn-lg w-100 dropdown-item" value="Nueva compra">

                                            </form></li>
                                    </ul>
                                </div>

                            </li>

                        </ul>
                    </div>

                    <div class="col-5">

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex flex-column align-items-center align-items-lg-center justify-content-center justify-content-lg-end w-100">
                            <h1 class="text-dark h5"><i class="far fa-address-card"></i> codigo: <%=fil[0]%> </h1>

                            <form action="../EmpleadoControl" method="post">
                                <input type="submit" name="acc" class="btn-danger btn  w-100 " value="Cerrar">
                            </form>

                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>