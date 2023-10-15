<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
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
		<title>Login</title>
	</head>
<body>
		
	<!-- Start Header/Navigation -->
		<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

			<div class="container" align="right">
				<a class="navbar-brand" href="${contextPath }/customer/project/main" >Bogogah<span>.</span></a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsFurni" >
					
				</div>
			</div>
				
		</nav>
		<!-- End Header/Navigation -->
		
		
		<!-- start Content Section -->
		
		<!-- Start Hero Section -->
				<div class="container">
					<div class="row justify-content-between">
					</div>
				</div>
		<!-- End Hero Section -->

		    <div class="container">
		    <form id="memberId" class="mb-3" action="${contextPath }/member/login" method="post">
		      <div class="row mb-5">
		        <div class="col-md-12">
		        </div>
		      </div>
		      <div align="center">
		        <div class="col-md-6 mb-5 mb-md-0">
		          <div class="p-3 p-lg-5 border bg-white">
		            <div class="form-group">
		            <h2 class="h4 mb-3 text-black">로그인</h2>
		              <label for="memberId" class="text-black"><span class="text-danger"></span></label>
		             <input type="text" class="form-control" id="memberId" name="memberId"  placeholder="아이디">
		            </div>
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="passwd" class="text-black"><span class="text-danger"></span></label>
		                <input type="text" class="form-control" id="passwd" name="passwd" placeholder="비밀번호">
		              </div>
		            </div>&emsp;
		          <div class="col-md-12">
		           <div class="form-group">
                  	<c:if test="${message == 'error'}">
                 	 <div style="color:red;"> 아이디 또는 비밀번호가 일치하지 않습니다.
                  </div>
                  	</c:if>
                  	 </div>
                  	   </div>
                  		<a href="${contextPath }/member/login"><i class="col-md-12"></i></a>
						<button class="nav-link" type="submit">로그인</button>
						<section>
						<a class="nav-link">비밀번호 찾기</a>
						<a class="" href="${contextPath }/member/register">회원가입</a>
						</section>
		                </div>
		              </div>
		            </div>
		            </form>
		          </div>
		        </div>
		        <div class="col-md-6">

		        </div>
		      </div>
		      <!-- </form> -->
		    </div>
		
		
		<!-- end Content Section -->
		
		<!-- Start Footer Section -->
		<footer class="footer-section">
			<div class="container relative">

				<div class="sofa-img">
					<img src="${contextPath }/resources/CsBoostrap/images/sofa.png" alt="Image" class="img-fluid">
				</div>

				<div class="row">
					<div class="col-lg-8">
						<div class="subscription-form">
						</div>
					</div>
				</div>

				<div class="row g-5 mb-5">
					<div class="col-lg-4">
						<div class="mb-4 footer-logo-wrap"><a href="#" class="footer-logo">Furni<span>.</span></a></div>
						<p class="mb-4">Donec facilisis quam ut purus rutrum lobortis. Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique. Pellentesque habitant</p>

						<ul class="list-unstyled custom-social">
							<li><a href="#"><span class="fa fa-brands fa-facebook-f"></span></a></li>
							<li><a href="#"><span class="fa fa-brands fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-brands fa-instagram"></span></a></li>
							<li><a href="#"><span class="fa fa-brands fa-linkedin"></span></a></li>
						</ul>
					</div>

					<div class="col-lg-8">
						<div class="row links-wrap">
							<div class="col-6 col-sm-6 col-md-3">
								<ul class="list-unstyled">
									<li><a href="#">About us</a></li>
									<li><a href="#">Services</a></li>
									<li><a href="#">Blog</a></li>
									<li><a href="#">Contact us</a></li>
								</ul>
							</div>

							<div class="col-6 col-sm-6 col-md-3">
								<ul class="list-unstyled">
									<li><a href="#">Support</a></li>
									<li><a href="#">Knowledge base</a></li>
									<li><a href="#">Live chat</a></li>
								</ul>
							</div>

							<div class="col-6 col-sm-6 col-md-3">
								<ul class="list-unstyled">
									<li><a href="#">Jobs</a></li>
									<li><a href="#">Our team</a></li>
									<li><a href="#">Leadership</a></li>
									<li><a href="#">Privacy Policy</a></li>
								</ul>
							</div>

							<div class="col-6 col-sm-6 col-md-3">
								<ul class="list-unstyled">
									<li><a href="#">Nordic Chair</a></li>
									<li><a href="#">Kruzo Aero</a></li>
									<li><a href="#">Ergonomic Chair</a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>

				<div class="border-top copyright">
					<div class="row pt-4">
						<div class="col-lg-6">
							<p class="mb-2 text-center text-lg-start">Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> Distributed By <a hreff="https://themewagon.com">ThemeWagon</a>  <!-- License information: https://untree.co/license/ -->
            </p>
						</div>

						<div class="col-lg-6 text-center text-lg-end">
							<ul class="list-unstyled d-inline-flex ms-auto">
								<li class="me-4"><a href="#">Terms &amp; Conditions</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>

					</div>
				</div>

			</div>
		</footer>
		<!-- End Footer Section -->	


		<script src="${contextPath }/resources/CsBoostrap/js/bootstrap.bundle.min.js"></script>
		<script src="${contextPath }/resources/CsBoostrap/js/tiny-slider.js"></script>
		<script src="${contextPath }/resources/CsBoostrap/js/custom.js"></script>
	</body>
		
		

</body>
</html>