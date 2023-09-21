<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

		<!-- Bootstrap CSS -->
		<link href="${contextPath }/resources/CsBoostrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
		<link href="${contextPath }/resources/CsBoostrap/css/tiny-slider.css" rel="stylesheet">
		<link href="${contextPath }/resources/CsBoostrap/css/style.css" rel="stylesheet">
		<title>Furni Free Bootstrap 5 Template for Furniture and Interior Design Websites by Untree.co </title>
	</head>

	<body>

		<!-- Start Header/Navigation -->
		 	<tiles:insertAttribute name="header" ignore="true"/>
		<!-- End Header/Navigation -->

		<!-- nav Section Begin -->
	  		 <tiles:insertAttribute name="contact" ignore="true"/>
	   	<!-- nav Section End -->

		<!-- Start Footer Section -->
			<tiles:insertAttribute name="footer" ignore="true"/>
		<!-- End Footer Section -->	


		<script src="${contextPath }/resources/CsBoostrap/js/bootstrap.bundle.min.js"></script>
		<script src="${contextPath }/resources/CsBoostrap/js/tiny-slider.js"></script>
		<script src="${contextPath }/resources/CsBoostrap/js/custom.js"></script>
	</body>

</html>
