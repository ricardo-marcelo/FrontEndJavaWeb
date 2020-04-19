<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<jsp:include page="/WEB-INF/view/common/head.jsp" />

 <body>

  <jsp:include page="/WEB-INF/view/common/header.jsp" />
  
  <section class="container-fluid min-vh-100 mt-2">
    <div class="card">
      <div class="card-header h5 text-primary ">
        Dashboard
      </div>
      <div class="card-body">

          <div class="row">
            <div class="col-4 ">
              <div class="card border-primary shadow text-primary">
                <div class="card-body text-center text-primary text-center">
                  <i class="material-icons">insert_chart</i>
                  <h4>Ventas</h4>
                  <h1>2364</h1>
                </div>
              </div>
            </div>

            <div class="col-4 ">
              <div class="card border-danger shadow text-danger">
                <div class="card-body text-center text-danger text-center">
                  <i class="material-icons">wc</i>
                  <h4>Clientes</h4>
                  <h1>454</h1>
                </div>
              </div>
            </div>

            <div class="col-4 ">
              <div class="card border-success shadow text-success">
                <div class="card-body text-center text-success text-center">
                  <i class="material-icons">shopping_cart</i>
                  <h4>Productos</h4>
                  <h1>680</h1>
                </div>
              </div>
            </div>
          </div>

      </div>
  </section>
  
  <jsp:include page="/WEB-INF/view/common/footer.jsp" />
  
 </body>
</html>
