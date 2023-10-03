<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
	function adminShopRemove(shopCd) {
		if (confirm("정말로 삭제하시겠습니까?")) {
			location.href = "${contextPath}/admin/shop/adminShopRemove?shopCd="+shopCd;
		}
	}

	function gerateMemberExcelExport() {
		location.href = "${contextPath}/admin/member/memberExcelExport";
	}
 </script>
</head>
<body>
<div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">상품관리 /</span> 상품리스트</h4>

              <!-- Basic Bootstrap Table -->
              <div class="card">
                <h5 class="card-header">상품 리스트</h5>
                <div class="table-responsive text-nowrap" align="right">
                   <input type="button" class="btn btn-primary" value="Excel Export" onclick="location.href='${contextPath}/member/memberExcelExport'" />	
                  <table class="table">
                    <thead>
                      <tr>
					<td width="5%" >#</td>
					<th width="15%">상품정보</th>
					<th width="30%">상세정보</th>
					<th width="10%">판매상태</th>
                    <th width="10%">재고수량</th>
                    <th width="10%">등록날짜</th>
                    <th width="10%">수정/삭제</th>
					</tr>
				</thead>
				<tbody id="shopList" class="table-border-bottom-0">
					<c:choose>
						<c:when test="${empty shopList}">
							<tr>
            				<td colspan="4" align="center"><h3>등록된 상품이 없습니다</h3></td>
            			</tr>
            		</c:when>
            		<c:otherwise>
              	<c:forEach var="shopDTO" items="${shopList }" varStatus="i">
              		 <tr>
              		 	<td align="center">
              		 		<h6>${shopDTO.shopCd }</h6>
                       </td>
                    		<td class="fab fa-angular fa-lg text-danger me-3">
                          	<img src="${contextPath }/thumbnails?shopFileName=${goodsDTO.shopFileName }" width="100" height="100">
                             <td>
                              <div class="cart__product__item__title">
                                  <h6><a href="${contextPath }/goods/goodsDetail?shopCd=${shopDTO.shopCd}">${shopDTO.shopNm }</a></h6>
                              	<p><fmt:formatNumber value="${shopDTO.price }"/>원</p>
                              </div>
                       <h6><i class="fab fa-angular fa-lg text-danger me-3"></i>${memberDTO.memberId}</h6>
                       </td>
                       <td>
                       <select>
                        	<option value="">선택</option>
                        	<option value="">판매중</option>
                        	<option value="">판매중지</option>
                        </select>
                       </td>
                       <td class="fab fa-angular fa-lg text-danger me-3" align="center">
                       	<div class="cart__product__item__title">
       				 	 <input type="number" class="numBox" value="${shopDTO.stock }" readonly="readonly"/>
                       </div>
                       </td>
                       <td><fmt:formatDate value="${shopDTO.enrollDt }" pattern="yyyy-MM-dd"/> </td>
                   		<td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="${contextPath }/admin/shop/Modify?shopCd=${shopDTO.shopCd}"><i class="bx bx-edit-alt me-1"></i> 수정</a>
                              <a class="dropdown-item" href="javascript:adminShopRemove(${shopDTO.shopCd });"
                                ><i class="bx bx-trash me-1"></i> 삭제</a>
                            </div>
                          </div>
                        </td>
                   </tr>
              	</c:forEach>
            		</c:otherwise>
				</c:choose>
			</tbody>
	</table>
	<div align="right" >
		<button type="button" onclick="javascript:location.href='${contextPath}/admin/shop/add'" class="btn btn-primary"><span class=""></span> 등록</button>
		
	</div>
</div>
</div>
</div>
</div>
</body>
</html>