<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>배송지 보관</h1>
							</div>
						</div>
						<div class="col-lg-7">
						</div>
					</div>
				</div>
    
		<!-- End Hero Section -->
		
		
	<!-- Breadcrumb Begin -->
    <div class="breadcrumb-option" align="right">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href=""><i class=""></i>마이페이지</a>
                        ><span><strong>배송자 보관</strong></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
		   <div class="container" align="center">
              <div class="row mb-5">
                <form class="col-md-12">
                  <div class="site-blocks-table">
                    <table class="table">
		            <tbody>
		            <c:choose>
                    		<c:when test="${empty addresslist}">
                    			<tr align="center">
                            		<td colspan="6"><h5>배송 정보가 없습니다.</h5></td>
                           		 </tr>
                    		</c:when>
                    		<c:otherwise>
		               <c:forEach var="MyAddress" items="${addresslist }"> 
						                
						   <div class=product-name>
					               <div>
					              		 <div class="product-name">${MyAddress.recipientNm }</div>
					               </div>
						       </div>
						       <div class="address-card__body">
						        	<div class="address-card__text address-card__text--address">${MyAddress.address }, ${MyAddress.detailAddress }</div>
						        	<div class="address-card__text address-card__text--cellphone">${MyAddress.recipientHp }</div>
								<div class="address-card__text address-card__text--delivery-preference">${MyAddress.deliveryRequest }</div>
						    </div>
						    <button class="address-card__button--edit _addressBookFormSubmit" type="submit">
                   			<span class="addressbook__text">수정</span>
             				 </button>
		               </c:forEach>
		               </c:otherwise>
                   </c:choose>
               </tbody>
				</table>
		    </div>
		   </form>
		   </div>
		   </div> 	
               <p align="center">
               <a href="${contextPath }/member/addressadd" class="">등록하기</a>
               </p>
</body>
</html>