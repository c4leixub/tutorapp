<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<!--
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
  <h1>Hello world!</h1>
  <P>The time on the server is ${serverTime}.</P>
</body>
</html>
-->

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tutor</title>
  <!-- Latest compiled and minified CSS, optional theme, and global theme-->
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/resources/css/global.css'/>">
  <link rel="stylesheet" href="<c:url value='/resources/css/main_page.css'/>">
</head>

<body>

<!-- navbar -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <img class="logo" alt="Brand" src="<c:url value='/resources/img/logo.png'/>">
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOW IT WORKS</a></li>
        <li><a href="#">FIND COURSES</a></li>
        <li><a href="#">SCHOOL</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li> <!-- sign in btn -->
        <a id="sign-in-link"data-toggle="modal" data-target="#LogInDialog"> <span class="glyphicon glyphicon-log-in"></span> Log in </a>
        </li>
        <li> <!-- sign up btn -->
        <a id="sign-up-link"> <span class="glyphicon glyphicon-user"></span> Sign Up </a>
        </li>
      </ul>
    </div>
  </div>
</nav> <!-- navbar -->

<div class="container"> <!-- Search bar -->
  <div class="input-group input-group-lg">
    <span class="input-group-btn"> <button class="btn btn-default" type="button"> <span class="glyphicon glyphicon-menu-hamburger"></span> </button> </span>
    <input type="text" class="form-control" placeholder="Search a course...">
    <span class="input-group-btn"> <button class="btn btn-warning" type="button"> <span class="glyphicon glyphicon-search"></span> </button> </span>
  </div>
</div> <!-- Search bar -->




<!--
============= Latest compiled and minified JavaScript, jQuery =============
-->

<script src="<c:url value='/resources/jQuery/jquery-1.11.2.min.js'/>"></script>
<script src="<c:url value='/resources/bootstrap/js/bootstrap.js'/>"></script>

<div  id="LogInDialog" class="modal fade">
  <div class="modal-dialog modal-md">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Log In</h3>
      </div>

      <div class="modal-body">
          <input type="text" class="form-control" id="username" placeholder="Username">
          <br>
          <input type="text" class="form-control" id="password" placeholder="Password">
        </table>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Log in</button>
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>
