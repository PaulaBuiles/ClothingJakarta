<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Paula
  Date: 8/03/2023
  Time: 11:28 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
    /* Style the form container */
    .form-container {
      border: 1px solid #ccc;
      padding: 20px;
      width: 400px;
      margin: auto;
    }

    /* Style the form labels */
    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }

    /* Style the form inputs */
    input[type=text], input[type=email], input[type=password] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    /* Style the form button */
    button[type=submit] {
      background-color: #4CAF50;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      float: right;
    }

    /* Clear floats after the form */
    .clearfix::after {
      content: "";
      clear: both;
      display: table;
    }
  </style>
</head>
  <body>

  <%--<ul class="alert alert-danger">
    <%
      for(String error:errores.values()){
    %>
    <li> <%=error%></li>
    <%}%>
  </ul>--%>


<div class="form-container">
  <h2>Registration Form</h2>
  <form  method="post" action="${pageContext.request.contextPath}/register-client" method="POST" class="needs-validation" >
    <%
      Map<String,String> errores = (Map<String, String>) request.getSession().getAttribute("errores");
    %>
    <div >
      <div >
        <label for="firstName" >Nombres</label>
        <input name="name" type="text" id="firstName" placeholder="name">
        <%
          if(errores != null && errores.containsKey("name")) {
            errores.get("name");
        %>
        <div class="alert alert-danger" >Nombre valido requerido</div>
        <%}%>
      </div>
      <div class="col-12">
        <label for="username" class="form-label">Usuario</label>
          <input name="username" type="text" class="form-control" id="username" placeholder="Usuario">
        </div>
        <%
          if(errores != null && errores.containsKey("username")) {
        %>
        <div class="alert alert-danger">Nombre de usuario valido requerido</div>
        <%}%>
      </div>
      <div class="col-12">
        <label  class="form-label">Contraseña</label>
        <input name="password" type="password" class="form-control"  placeholder="password">
        <%
          if(errores != null && errores.containsKey("password")) {
        %>
        <div class="alert alert-danger">Contraseña válida requerida</div>
        <%}%>
      </div>
    <div class="col-12">
      <label  class="form-label">Confirmar contraseña</label>
      <input name="confirm_password" type="password" class="form-control" id="email" placeholder="confirm password">
      <%
        if(errores != null && errores.containsKey("confirm_password")) {
      %>
      <div class="alert alert-danger">Debe ser igual a la contraseña</div>
      <%}%>
    </div>
      <div class="col-12">
        <label for="address" class="form-label">Dirección</label>
        <input name="address" type="text" class="form-control" id="address" placeholder="ej: km 10. via tebaida-armenia" >
        <%
          if(errores != null && errores.containsKey("address")) {
        %>
        <div class="alert alert-danger">Dirección válida requerida</div>
        <%}%>
      </div>
     <%-- <div class="col-12">
        <label for="email" class="form-label">Email</label>
        <input name="phone" type="text" class="form-control" id="email" placeholder="user@p.com">
        <%
          if(errores != null && errores.containsKey("email")) {
        %>
        <div class="alert alert-danger">Email valido requerido, debe contener un '@'</div>
        <%}%>
      </div>--%>
   <%-- <% HashMap<String,String> errores=(HashMap<String, String>) request.getSession().getAttribute("errores");%>
    <div >
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    </div>
    <%
      if (errores != null && errores.containsKey("name")){
        errores.get("name");
    %>
    <div class="alert alert-danger" role="alert">Se requiere un nombre</div>
      <%} %>
    <div class="alert alert-danger" role="alert">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" value="${param.username}" required>
      <%
        if(errores != null && errores.containsKey("userName")) {
      %>
      <div class="alert alert-danger">Nombre de usuario valido requerido</div>
      <%}%>
    </div>

    <div class="alert alert-danger" role="alert">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${param.email}" required>
    </div>
    <div class="alert alert-danger" role="alert">
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" value="${param.password}" required>
    </div>
    <div class="alert alert-danger" role="alert">
    <label for="confirm_password">Confirm Password:</label>
    <input type="password" id="confirm_password" name="confirm_password" value="${param.confirm_password}" required>
    </div>
    <div class="alert alert-danger" role="alert">
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value="${param.address}" required>
    </div>--%>
    <div class="clearfix">
      <button type="submit">Register</button>
    </div>
  </form>
  <h1>Clients list</h1>
  <p>Lista completa de todos los usuarios registrados </p>
  <form action="/register-client" method="get">
    <div class="clearfix">
      <button value="list" type="submit">Ver lista</button>
    </div>
  </form>
</div>

</body>
</html>

