<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="${contextPath}/resources/boostrap/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="${contextPath}/resources/boostrap/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/boostrap/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="${contextPath}/resources/boostrap/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="${contextPath}/resources/boostrap/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/boostrap/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="${contextPath}/resources/boostrap/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->
	<script src="${contextPath}/resources/boostrap/vendor/libs/jquery/jquery.js"></script>
    <!-- Helpers -->
    <script src="${contextPath}/resources/boostrap/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${contextPath}/resources/boostrap/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
       
		        <!-- aside Section Begin -->
		   			<tiles:insertAttribute name="aside"/>
		   		<!-- aside Section End -->

        <!-- Layout container -->
        <div class="layout-page">
         
	            <!-- nav Section Begin -->
	  			  <tiles:insertAttribute name="nav"/>
	   			<!-- nav Section End -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
           
            <!-- Content Section Begin -->
			<tiles:insertAttribute name="content"/>
			<!-- Content Section End -->

        <!-- Footer Section Begin -->
			<tiles:insertAttribute name="footer"/>
		<!-- Footer Section End -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <div class="buy-now">
      <a
        href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/"
        target="_blank"
        class="btn btn-danger btn-buy-now"
        >Upgrade to Pro</a
      >
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="${contextPath}/resources/boostrap/vendor/libs/popper/popper.js"></script>
    <script src="${contextPath}/resources/boostrap/vendor/js/bootstrap.js"></script>
    <script src="${contextPath}/resources/boostrap/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${contextPath}/resources/boostrap/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="${contextPath}/resources/boostrap/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="${contextPath}/resources/boostrap/js/main.js"></script>

    <!-- Page JS -->
    <script src="${contextPath}/resources/boostrap/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>