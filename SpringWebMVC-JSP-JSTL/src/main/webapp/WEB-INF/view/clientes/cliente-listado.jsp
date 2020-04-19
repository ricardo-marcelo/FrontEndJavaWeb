<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/WEB-INF/view/common/head.jsp" />

<body>   
   <jsp:include page="/WEB-INF/view/common/header.jsp" />
   
    <section class="container-fluid min-vh-100 mt-2">
        <div class="row m-2">
            <div class="col12">
                <button class="btn btn-success mr-2" id="btnClienteNuevo">
                    <i class="material-icons">add_circle</i> Nuevo</button>


            <button class="btn btn-success mr-2" id="btnClienteRefresh">
                <i class="material-icons">refresh</i> Refresh</button>
            </div>
        </div>

        <div class="card">
            <div class="card-header h5 text-primary ">
                Listado de Cliente
            </div>
            <div class="card-body">
                <table class="table table-sm table-hover m-2">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Dirección</th>
                            <th>Teléfono</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="cliente" items="${clientes}">
                        <tr>
                            <td>${cliente.id}</th>
                            <td>${cliente.nombre}</td>
                            <td>${cliente.direccion}</td>
                            <td>${cliente.telefono}</td>
                        </tr>
                     </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    
    <jsp:include page="/WEB-INF/view/common/footer.jsp" />

</body>

</html>