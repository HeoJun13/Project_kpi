<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                                    <input type="text" id="orderGoodsQty" name="orderGoodsQty" value="1"> &emsp;&emsp;
                                </div>
                            </div>
                            <a href="javascript:processToCart(${goodsDTO.goodsCd });" class="cart-btn"><span class="icon_cart_alt"></span> 장바구니</a>
                            <a href="javascript:processToOrder(${goodsDTO.goodsCd });" class="cart-btn"><span class="icon_bag_alt"></span> 주문하기</a>
                        </div>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>출판일 : </span>
                                    <p><fmt:formatDate value="${goodsDTO.publishedDt }" pattern="yyyy-MM-dd"/> </p>
                                </li>
                                <li>
                                    <span>등록일 : </span>
                                    <p><fmt:formatDate value="${goodsDTO.enrollDt }" pattern="yyyy-MM-dd"/></p>
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
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">상품소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">상품목차</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">저자소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">출판사 상품평가</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab">추천사</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                        	<div class="tab-pane active" id="tabs-1" role="tabpanel">
                                ${shopDTO.intro}
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                            	${goodsDTO.contentsOrder }
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                            	${goodsDTO.writerIntro }
                            </div>
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                            	${goodsDTO.publisherComment }
                            </div>
                            <div class="tab-pane" id="tabs-5" role="tabpanel">
                            	${goodsDTO.recommendation }
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="related__title">
                        <h5>RELATED PRODUCTS</h5>
                    </div>
                </div>
                <c:forEach var="relatedGoods" items="${relatedGoodsList }">
	                <div class="col-lg-3 col-md-4 col-sm-6">
	                    <div class="product__item">
	                        <div class="product__item__pic set-bg" data-setbg="${contextPath }/thumbnails?goodsFileName=${relatedGoods.goodsFileName}">
	                            <c:choose>
                                   	<c:when test="${relatedGoods.sort eq 'new' }"> <div class="label new">New</div></c:when>
                                   	<c:when test="${relatedGoods.sort eq 'best' }">  <div class="label sale">Best</div></c:when>
                                   	<c:when test="${relatedGoods.sort eq 'steady' }"> <div class="label stockout stockblue">Steady</div></c:when>
                                </c:choose>
	                            <ul class="product__hover">
                                     <li><a href="${contextPath }/thumbnails?goodsFileName=${relatedGoods.goodsFileName}" class="image-popup"><span class="arrow_expand"></span></a></li>
                                     <li><a href="javascript:processToCart(${relatedGoods.goodsCd})"><span class="icon_cart_alt"></span></a></li>
                                     <li><a href="javascript:processToOrder(${relatedGoods.goodsCd})"><span class="icon_bag_alt"></span></a></li>
                                </ul>
	                        </div>
	                        <div class="product__item__text">
	                           <h6>
                               	<a href="${contextPath }/goods/goodsDetail?goodsCd=${relatedGoods.goodsCd}">${relatedGoods.goodsNm }<br>
                                	${relatedGoods.writer } | ${relatedGoods.publisher }
                               	</a>
                               </h6>
                               <div class="product__price" style="text-decoration: line-through; color: gray"><fmt:formatNumber value="${relatedGoods.price }"/>원 (${relatedGoods.discountRate}%)</div>
                               <div class="product__price"><fmt:formatNumber value="${relatedGoods.price - relatedGoods.price * relatedGoods.discountRate / 100 }"/>원</div>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
                
            </div>
        </div>
    </section>

</body>
</html>