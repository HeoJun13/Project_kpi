<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Start Header/Navigation -->
		<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

			<div class="container">
			<a class="navbar-brand" href="${contextPath }/customer/project/main">Bogogah<span>.</span></a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsFurni" >
					<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
						<li class="nav-item active">
							<a class="nav-link" href="${contextPath }/customer/project/main">Home</a>
						</li>
						<li><a class="nav-link" href="${contextPath }/shop/list">사무용의자</a></li>
						<li><a class="nav-link" href="about.html">About us</a></li>
						<li><a class="nav-link" href="services.html">Services</a></li>
						<li><a class="nav-link" href="blog.html">Blog</a></li>
						<li><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>
					<c:choose>
                    		<c:when test="${sessionScope.memberId eq null }">
		                        <div class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-3">
		                            <a class="nav-link" href="${contextPath }/member/login">로그인</a>
		                            <a class="nav-link" href="${contextPath }/member/register">회원가입</a>
		                        </div>
                    		</c:when>
                    		<c:otherwise>
		                        <div class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-3">
		                            <a class="nav-link" href="${contextPath }/member/logout">로그아웃</a>
		                        </div>
                    		</c:otherwise>
                    	</c:choose>
					
					

					<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-3">
						<li><a class="nav-link" href="${contextPath }/member/login"><img src="${contextPath }/resources/CsBoostrap/images/user.svg"></a></li>
						<li><a class="nav-link" href="${contextPath }/mypage/cartlist"><img src="${contextPath }/resources/CsBoostrap/images/cart.svg"></a></li>
						<li><a class="nav-link" href="contact.html">커뮤니티</a></li>
					</ul>
				</div>
			</div>
				
		</nav>
		<!-- End Header/Navigation -->

</body>
</html>