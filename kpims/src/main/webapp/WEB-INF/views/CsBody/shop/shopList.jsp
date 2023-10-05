<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Start Hero Section -->
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Shop</h1>
							</div>
						</div>
						<div class="col-lg-7">
						</div>
					</div>
				</div>
		<!-- End Hero Section -->

		

		<div class="untree_co-section product-section before-footer-section">
		    <div class="container">
		      	<div class="row" align="center">
		      	<c:choose>
		      		<c:when test="${empty shopList}"  >
	      				<div class="product-item">
                   			<h3>등록된 상품이 없습니다.</h3>
                         </div>
		      		</c:when>
		      		<c:otherwise>
		      			 <c:forEach var="shopDTO" items="${shopList }">
		      		 		<div class="col-12 col-md-4 col-lg-3 mb-5">
		      		 			<div class="product-item" href="">
		      		 			<img src="${contextPath }/admin/project/thumbnails?shopFileName=${shopDTO.shopFileName }" width="100" height="100"/>
		      		 				
		      		 				<div class="product-title">
		      		 					<h3>
		      		 						<a href="${contextPath }/shop/detail?shopCd=${shopDTO.shopCd}">${shopDTO.shopNm }<br></a>
		      		 					</h3>
		      		 				<div class="product__price" style="text-decoration: line-through; color: gray"><fmt:formatNumber value="${shopDTO.price }"/>원 (${shopDTO.discountRate}%)</div>
		      		 				<div class="product-price"><fmt:formatNumber value="${shopDTO.price - shopDTO.price * shopDTO.discountRate / 100 }"/>원</div>
		      		 				</div>
		      		 				
		      		 				<span class="icon-cross">
										<img src="images/cross.svg" class="img-fluid">
									</span>
		      		 		</div>
		      		 	</div>
		      		 </c:forEach>	
		      		</c:otherwise>
		      	</c:choose>

		      	</div>
		    </div>
		</div>


</body>
</html>