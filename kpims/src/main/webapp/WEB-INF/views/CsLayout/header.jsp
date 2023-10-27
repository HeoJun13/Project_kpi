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

		<section class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

			<div class="container">
			<a class="navbar-brand" href="${contextPath }/customer/project/main">Bogogah<span>.</span></a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarsFurni" >
					<c:choose>
                    		<c:when test="${sessionScope.memberId eq null }">
					<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					    <li><a class="nav-link" href="${contextPath }/customer/project/main">Home</a>
						<li><a class="nav-link" href="${contextPath }/shop/list">사무용의자</a></li>
						<li><a class="nav-link" href="${contextPath }/mypage/myInfo">회원관리</a>
						</li>
						<li><a class="nav-link" href="${contextPath}/member/addresslist">배송지관리</a>
                       	</li>
                        <li><a href="#" class="nav-link">취소/교환/반품</a></li>
					</ul>
					
					
				</c:when>
				<c:otherwise>
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					    <li><a class="nav-link" href="${contextPath }/customer/project/main">Home</a>
						<li><a class="nav-link" href="${contextPath }/shop/list">사무용의자</a></li>
						<li><a class="nav-link" href="${contextPath }/mypage/myInfo?memberId=${memberDTO.memberId}">회원관리</a>
						</li>
						<li><a class="nav-link" href="${contextPath}/member/addresslist?memberId=${memberDTO.memberId}">배송지관리</a>
                        <li><a href="#" class="nav-link">취소/교환/반품</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
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
					<c:choose>
                    		<c:when test="${sessionScope.memberId eq null }">
						<li class="nav-link">
						<a href="${contextPath }/member/login">
						<span><img src="${contextPath }/resources/CsBoostrap/images/user.svg">&nbsp;</span>
						<span class="nav-link">마이페이지</span>
						</a>
						</li>
						</c:when>
						
						<c:otherwise>
						<li class="nav-link">
						<a href="${contextPath }/mypage/cartlist">
						<span><img src="${contextPath }/resources/CsBoostrap/images/user.svg">&nbsp;</span>
						<span class="nav-link">마이페이지</span>
						</a>
						</li>
						</c:otherwise>
					</c:choose>	
					
						<li class="nav-link">
						<a href="${contextPath }/mypage/cartlist">
						<span><img src="${contextPath }/resources/CsBoostrap/images/cart.svg">&nbsp;</span>
						<span class="nav-link">장바구니</span>
						</a>
						</li>
						
					</ul>
					<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					<li>
						<a class="nav-link" href="contact.html">커뮤니티</a>
						</li>
					</ul>
				</div>
			</div>
		</section>
		<!-- End Header/Navigation -->
</body>
</html>