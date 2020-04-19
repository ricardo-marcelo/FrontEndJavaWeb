<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctxPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="/WEB-INF/view/common/head.jsp" />

<body>

<jsp:include page="/WEB-INF/view/common/header.jsp" />

    <section class="container-fluid min-vh-100 mt-2">
	<!--	
    	<c:if test="${not empty resultado}">
			<div class="alert alert-${codigo eq 'OK'?'success':'danger'}" id="mensaje" role="alert">
	             ${resultado}
	        </div>        
		</c:if>
	-->  
 
	 	<div class="alert alert-success" id="mensaje" role="alert">
	             
	    </div>
      
        <div class="card">
            <div class="card-header h5 text-primary ">
                Nuevo Cliente
            </div>
            <div class="card-body">

				<form:form class="form-horizontal" id="frmClienteNuevo" method="post" 
					action="${ctxPath}/clienteGuardar" modelAttribute="cliente" >
                
                    <div class="form-group row">
                        <label for="txtId" class="col-sm-2 col-form-label">Id</label>
                        <div class="col-sm-10">
                            <form:input type="number" class="form-control"  path="id" id="txtId"  required="required" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="txtNombre" class="col-sm-2 col-form-label">Nombre</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control"  path="nombre" id="txtNombre" required="required" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="txtDireccion" class="col-sm-2 col-form-label">Dirección</label>
                        <div class="col-sm-10">
                            <form:textarea class="form-control"  path="direccion" id="txtDireccion" rows="2" required="required"></form:textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="txtTelefono" class="col-sm-2 col-form-label">Teléfono</label>
                        <div class="col-sm-10">
                            <form:input type="text" class="form-control"  path="telefono" id="txtTelefono" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary" id="btnClienteGuardar">Guardar</button>
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </section>
    
    <jsp:include page="/WEB-INF/view/common/footer.jsp" />
    
</body>

</html>