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
<script>

$().ready(function(){

	getTotalPrice();
	
	$("[name='cartCd']").change(function(){
		getTotalPrice();
	});
	
});

function getTotalPrice () {
	var totalPrice = 0;
	$("[name='cartCd']:checked").each(function(){
		var tempCartCd = $(this).val();
		totalPrice += Number($("#price" + tempcartCd).val()) * Number($("#cartShopQty" + tempcartCd).val());
	});
	totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + " 원";
	$("#totalPrice").html(totalPrice);
}


function removeCart() {
	
	var cartCdList = "";
	if (confirm("정말로 삭제하시겠습니까?")) {
		
		$("input[name='cartCd']:checked").each(function(){
			cartCdList += $(this).val() + ",";
		});
		location.href = "${contextPath}/mypage/deleteCart?cartCdList=" + cartCdList;
	}
	
}



</script>
<body>

	
<!-- Start Hero Section -->
	
			<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>장바구니</h1>
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
                        <a href=""><i class=""></i><strong>장바구니</strong></a>
                        ><span>주문/결제</span>
                        ><span>주문완료</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    

		

            <div class="container">
              <div class="row mb-5">
                <form class="col-md-12">
                  <div class="site-blocks-table">
                    <table class="table">
                      <thead>
                        <tr>
                          <th width="3%"></th>
                          <th class="product-thumbnail">이미지</th>
                          <th class="product-name">상품정보</th>
                          <th class="product-price">수량</th>
                          <th class="product-quantity">주문금액</th>
                          <th class="product-total">배송정보</th>
                        </tr>
                      </thead>
                      <tbody>
                    	<c:choose>
                    		<c:when test="${empty cartlist}">
                    			<tr align="center">
                            		<td colspan="6"><h5>장바구니가 비어있습니다.</h5></td>
                           		 </tr>
                    		</c:when>
                    	 <c:otherwise>
                    		 <c:forEach var="MyCart" items="${cartlist }">
                    		<tr>
                    		<td><input type="checkbox" name="cartCd" id="cartCd" value="${MyCart.cartCd }"></td>
                          <td class="product-thumbnail">
                          <div class="checkbox checkbox-styled no-margin"></div>
                            <div>
                            	<img src="${contextPath }/admin/project/thumbnails?shopFileName=${MyCart.shopFileName }" width="100" height="100" alt="Image" class="img-fluid">
                            </div>
                          </td>
                          <td class="product-name">
                            <h2 class="h5 text-black">"${MyCart.shopNm }"</h2>
                          </td>
                         <td>
                            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                              <div class="input-group-prepend">
                                <button class="btn btn-outline-black decrease" type="button">&minus;</button>
                              </div>
                              <input type="text" class="form-control text-center quantity-amount" value="${MyCart.cartshopQty }" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                              <div class="input-group-append">
                                <button class="btn btn-outline-black increase" type="button">&plus;</button>
                              </div>
                            </div>
        
                          </td>
                          <td class="product-price">
                          	<h2 class="h5 text-black">
                          	<span style="text-decoration: line-through; color: gray" ><fmt:formatNumber value="${MyCart.price }"/></span><br>
                           	<fmt:formatNumber value="${MyCart.price -  MyCart.price * (MyCart.discountRate / 100)}"/>
							<input type="hidden" id="price${MyCart.cartCd }" value="${MyCart.price -  MyCart.price * (MyCart.discountRate / 100)}">	
                          	</h2>
                          </td>
                          <td>
                            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                              <div class="input-group-prepend">
                                <button class="btn btn-outline-black decrease" type="button">&minus;</button>
                              </div>
                              <input type="text" class="form-control text-center quantity-amount" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                              <div class="input-group-append">
                                <button class="btn btn-outline-black increase" type="button">&plus;</button>
                              </div>
                            </div>
                          </td>
                        </tr>
                    		 </c:forEach>
                    		</c:otherwise>
                    	</c:choose>
                      </tbody>
                    </table>
                  </div>
                </form>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="row mb-5">
                    <div class="col-md-6 mb-3 mb-md-0">
                      <a href="javascript:removeCart();">선택상픔 삭제</a>
                      <button class="">Continue Shopping</button>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 pl-5">
                  <div class="row justify-content-end">
                    <div class="col-md-7">
                      <div class="row">
                        <div class="col-md-12 text-right border-bottom mb-5">
                          <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                        </div>
                      </div>
                      <div class="row mb-3">
                      </div>
                      <div class="row mb-5">
                        <div class="col-md-6">
                          <span class="text-black">Total</span>
                        </div>
                        <div class="col-md-6 text-right">
                          <span id="totalPrice"></span>
                        </div>
                      </div>
        
                      <div class="row">
                        <div class="col-md-12">
                          <button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location='http://localhost:8080/kpims/order/orderShop'">주문하기</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

</body>
</html>