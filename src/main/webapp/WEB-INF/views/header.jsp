<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html lang="ko" class="h-100">
<head>
    <meta charset="utf-8">
    <title>Not yet decided</title>
    <meta name="description" content="Bootstrap, Responsive HTML5 Template">
    <meta name="author" content="Sadalmelik">

    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    
    <!-- Font Awesome CSS -->

    <!-- Plugins -->


    <!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->

    <!-- Custom css -->
    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      main > .container {
		padding: 60px 15px 0;
	  }
	  #custom-cards {
	  	padding-top: 3rem !important;
	  }
	  .btn-wrapper form {
	  	text-align: center;
	  }
	  .card {
	  	background-size: cover;
	  	background-repeat: no-repeat;
	  	background-position: center;
	  }
    </style>

    <!-- Custom styles for this template -->
</head>
<body class="d-flex flex-column h-100">
	<header>
	  <!-- Fixed navbar -->
	  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	    <div class="container-fluid">
	      <a class="navbar-brand" href="${context}/index.jsp">Board Sample</a>
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarCollapse">
	        <ul class="navbar-nav me-auto mb-2 mb-md-0">
	          <li class="nav-item">
	            <a class="nav-link" href="${context}/article/write.do">New Entry</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${context}/article/read.do">Recent Entry</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${context}/article/modify.do">Modify Recent Entry</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${context}/article/delete.do">Delete Recent Entry</a>
	          </li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	</header>
	
	<div class="container px-4 py-5" id="custom-cards">
		<div class="row align-items-stretch g-4 py-5">
	      <div>
	        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('../../resources/imgs/carina_nebula.jpg');">
	          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
	            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Short title, long jacket</h2>
	            <ul class="d-flex list-unstyled mt-auto">
	              <li class="me-auto">
	                <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
	              </li>
	              <li class="d-flex align-items-center me-3">
	                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"/></svg>
	                <small>Earth</small>
	              </li>
	              <li class="d-flex align-items-center">
	                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"/></svg>
	                <small>3d</small>
	              </li>
	            </ul>
	          </div>
	        </div>
	      </div>
		</div>
	</div>