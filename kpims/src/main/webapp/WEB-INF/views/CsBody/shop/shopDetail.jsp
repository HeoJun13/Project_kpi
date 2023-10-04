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

<section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__left product__thumb nice-scroll">
                            <a class="pt active" href="#product-1">
                                <img src="${contextPath }/thumbnails?shopFileName=${shopDTO.shopFileName }" >
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
                        <div class="product__details__price"><fmt:formatNumber value="${shopDTO.price - (shopDTO.price * shopDTO.discountRate / 100)}" /><span><fmt:formatNumber value="${shopDTO.price }"/></span></div>
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>수량 : </span>
                                <div class="pro-qty">
                                    <input type="text" id="orderShopQty" name="orderShopQty" value="1"> &emsp;&emsp;
                                </div>
                            </div>
                            <a href="javascript:processToCart(${shopDTO.shopCd });" class="cart-btn"><span class="icon_cart_alt"></span> 장바구니</a>
                            <a href="javascript:processToOrder(${shopDTO.shopCd });" class="cart-btn"><span class="icon_bag_alt"></span> 주문하기</a>
                        </div>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>등록일 : </span>
                                    <p><fmt:formatDate value="${shopDTO.enrollDt }" pattern="yyyy-MM-dd"/></p>
                                </li>
                                <li>
                                    <span>포인트 : </span>
                                    <p>${shopDTO.point }P</p>
                                </li>
                                <li>
                                    <span>할인률 : </span>
                                    <p>${shopDTO.discountRate }%</p>
                                </li>
                                <li>
                                    <span>배송비 : </span>
                                    <p>${shopDTO.deliveryPrice }원</p>
                                </li>
                                <li>
                                    <span>재고 : </span>
                                    <p>${shopDTO.stock } 개</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
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