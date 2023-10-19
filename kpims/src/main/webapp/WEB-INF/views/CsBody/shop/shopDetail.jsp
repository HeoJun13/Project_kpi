<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="sessionId" value="${sessionScope.memberId }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">

  function processToCart(shopCd) {
	  
	if ("${sessionId == null}" == "true") {
		alert("로그인을 진행해주세요.");
		location.href = "${contextPath }/member/login";
	}
	else {
		$.ajax({
			url : "${contextPath }/mypage/addcart",
			method : "get",
			data : {"shopCd" : shopCd , "cartshopQty" : $("#cartshopQty").val()},
			success : function(result) {
				
				if (result == "duple") {
					alert("이미 추가된 품목입니다.");
				}
				else {
					alert("장바구니에 추가되었습니다.");
				}
				
			}
		})
		
	}
	
}
  
  function processToOrder(shopCd) {
	  
		if ("${sessionId == null}" == "true") {
			alert("로그인을 진행해주세요.");
			location.href = "${contextPath }/member/login";
		}
  }
  
	
</script>
</head>
<body>

 <div class="breadcrumb-option" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${contextPath }/"><i class="fa fa-home"></i>HOME</a>
                        < <a href="#"> shop</a>
                        <span>< ${shopDTO.shopNm }</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

<section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__left product__thumb nice-scroll">
                            <a class="pt active" href="#product-1">
                                <img src="${contextPath }/admin/project/thumbnails?shopFileName=${shopDTO.shopFileName }" width="400" height="400" >
                            </a>
                        </div>
                        <div class="product__details__slider__content">
                            <div class="product__details__pic__slider owl-carousel">
                                <img data-hash="product-1" class="product__big__img" src="${contextPath }/thumbnails?shopFileName=${shopDTO.shopFileName }" >
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3>${shopDTO.shopNm } <span></span></h3>
                        <div class="product__details__price" style="text-decoration: line-through; color: gray"><fmt:formatNumber value="${shopDTO.price }"/>원 (${shopDTO.discountRate}%)</div>
		      		 	<div class="product-details-price"><fmt:formatNumber value="${shopDTO.price - shopDTO.price * shopDTO.discountRate / 100 }"/>원</div>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>등록일 : </span>
                                    <p><fmt:formatDate value="${shopDTO.enrollDt }" pattern="yyyy-MM-dd"/></p>
                                </li>
                                <li>
                                    <span>포인트 : </span>
                                    <p>${shopDTO.point } 포인트 접립예정.</p>
                                </li>
                                <li>
                                    <span>배송비 : </span>
                                    <p>${shopDTO.deliveryPrice }</p>
                                </li>
                            </ul>
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>수량 : </span>
                                <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 230px;" >
	                                <div class="input-group-prepend">
                                <button class="btn btn-outline-black decrease" type="button">&minus;</button>
                            		  </div>
                                    <input type="text" id="cartshopQty" name="cartshopQty" class="form-control text-center quantity-amount" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                                	<div class="input-group-append">
                                <button class="btn btn-outline-black increase" type="button">&plus;</button>
                              		</div>
                                </div>
                            </div>
                            <a href="javascript:processToCart(${shopDTO.shopCd });" class="cart-btn"><span></span> 장바구니</a>
                            <a href="javascript:processToOrder(${shopDTO.shopCd });" class="cart-btn"><span></span> 주문하기</a>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist" >
                           <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">상품상세정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">상품구매안내</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">구매후기</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">상품문의</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab">관련상품</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                        	<div class="tab-pane active" id="tabs-1" role="tabpanel">
                                ${shopDTO.intro}
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                            </div>
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                            </div>
                            <div class="tab-pane" id="tabs-5" role="tabpanel">
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>