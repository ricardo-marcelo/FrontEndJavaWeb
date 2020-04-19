<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctxPath" value="${pageContext.request.contextPath}"/>

<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary p-0">
      <div class="text-warning h4 m-2">IGH GROUP</div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#colapsado">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="colapsado">
        <ul class="navbar-nav nav">
          <li class="nav-item">
            <a class="nav-link text-white" href="${ctxPath}/">Inicio</a>
          </li>
          <li class="nav-item">
          <a class="nav-link text-white" href="${ctxPath}/clienteListado">Clientes</a>
          </li>
        </ul>

        <ul class="navbar-nav ml-auto nav-flex-icons">
          <li class="nav-item avatar dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <img src="${ctxPath}/resources/img/foto.jpg" class="rounded-circle z-depth-0" alt="Foto">
            </a>
            <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary">
              <a class="dropdown-item" href="#">Perfil</a>
              <a class="dropdown-item" href="#">Cerrar Sesión</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
  </header>