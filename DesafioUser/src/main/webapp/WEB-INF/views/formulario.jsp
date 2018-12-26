<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<title>Register</title>
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
	<form:form action="saveUser" method="POST">
			<div class="form-group">
		    <form:label path="username" for="user_name">Username :</form:label>
		    <form:input path="username" type="text" class="form-control" id="user_name"  placeholder="Choose Username"/>

		  </div>
		  <div class="form-group">
		    <form:label path="password" for="InputPassword">Password</form:label>
		    <form:input path="password" type="password" class="form-control" id="InputPassword" placeholder="Password"/>
		  </div>
		  <div class="form-group">
		    <form:label path="name" for="name">Name :</form:label>
		    <form:input path="name" type="text" class="form-control" id="name" aria-describedby="nameHelp" placeholder="Enter Your Name"/>

		  </div>
		  <div class="form-group">
		    <form:label path="surname" for="surname">Surname :</form:label>
		    <form:input path="surname" type="text" class="form-control" id="surname" aria-describedby="surnameHelp" placeholder="Enter Surname"/>

		  </div>
			<div class="form-group">
		    <form:label path="email" for="exampleInputEmail1">Email address</form:label>
		    <form:input path="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
		    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else. Wait! We will think about not sharing it</small>
		  </div>
		  <div class="form-group">
		    <form:label path="phone" for="phone">Phone :</form:label>
		    <form:input path="phone" type="text" class="form-control" id="phone" aria-describedby="phoneHelp" placeholder="Enter Your Phone Number"/>

		  </div>
		  <div class="form-group form-check">
		    
		    <form:label path="is_enabled" class="form-check-label" for="exampleCheck1">Check if User´s Enabled</form:label>
		  </div>
		  <button type="submit" class="btn btn-primary">Save</button>
	</form:form>
</body>
</html>