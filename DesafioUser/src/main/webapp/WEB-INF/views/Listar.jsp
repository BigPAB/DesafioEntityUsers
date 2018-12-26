<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<title>Users</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  

  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="form">Register <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="list">List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="searchUser">Search User</a>
      </li>
    </ul>
  </div>
</nav>
<table class="table">
  <thead>
    <tr>
    <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Apelido</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Is_enabled</th>
      <th scope="col">Date</th>
      <th scope="col">Username</th>
      <th scope="col">Phone</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${listaUsers }" var="user">
    <tr>
      <td>${user.id}</td>
      <td>${user.name}</td>
      <td>${user.surname}</td>
      <td>${user.email}</td>
      <td>${user.password}</td>
      <td>${user.is_enabled}</td>
      <td>${user.register_date}</td>
      <td>${user.username}</td>
      <td>${user.phone}</td>
    </tr>
    </c:forEach>
  </tbody>
</table> 
</body>
</html>