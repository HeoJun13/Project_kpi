<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script>
	$().ready(function(){
		
		$("[name='part']").val("${goodsDTO.part}");
		
	});

</script>
<title>Insert title here</title>
</head>
<body>

  <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">상품관리/</span>상품수정</h4>

              <!-- Basic Layout -->
              <section class="row">
                <div class="col-xl">
                   <form action="${contextPath }/admin/shop/Modify" method="post" enctype="multipart/form-data">
                  	 <input type="hidden" name="shopCd" value="${shopDTO.shopCd }">
                  <div class="card mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <h5 class="mb-0">상품수정</h5>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                                <div class="form-label">
                                    <p>상품이미지<span>*</span> <span class="icon_upload"></span> </p>
                                    <input type="file" id="goodsFileName" name="goodsFileName" value="${shopDTO.shopFileName }">
                                </div>
                           </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-fullname">상품명</label>
                          <input type="text" class="form-control" id="shopNm" name="shopNm" value="${shopDTO.shopNm }" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">가격</label>
                          <input type="text" class="form-control" id="price" name="price" value="${shopDTO.price }" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">할인률</label>
                          <input type="text" class="form-control" id="discountRate" name="discountRate" value="${shopDTO.discountRate }" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">재고</label>
                          <input type="text" class="form-control" id="stock" name="stock" value="${shopDTO.stock }" />
                        </div>
                        <div class="mb-3">
                                <div class="form-label">
                                    <p>판매상태 <span>*</span></p>
                                    <select id="salesStatus" name="salesStatus">
                                    	<option value="sale">판매중</option>
                                    	<option value="stopSelling">판매중지</option>
                                    </select>
                                </div>
                            </div>
                        <div class="mb-3">
                                <div class="form-label">
                                    <p>분류 <span>*</span></p>
                                    <select id="part" name="part">
                                    	<option value="general">일반</option>
                                    	<option value="new">사무용의자</option>
                                    	<option value="best">학생/유아용의자</option>
                                    	<option value="steady">식당용의자</option>
                                    </select>
                                </div>
                            </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">적립포인트(P)</label>
                          <input type="text" class="form-control" id="point" name="point" value="${shopDTO.point }" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">배송비</label>
                          <input type="text" class="form-control" id="deliveryPrice" name="deliveryPrice" value="${shopDTO.deliveryPrice }" />
                        </div>
                        <div class="col-sm-12">
                                <div class="form-label">
                                   <div class="checkout__form__input">
                                    <p>상품소개<span>*</span></p>
                                    <textarea rows="5" cols="100" id="intro" name="intro">${shopDTO.intro }</textarea> 
                                	<script>CKEDITOR.replace("intro");</script>
                                </div>
                            </div>
                        </div>
                        <div align="right">
                        <button type="submit" class="btn btn-primary">수정</button>
                      	</div>
                    </div>
                  </div>
                      </form>
                </div>
             </section>
              </div>
           
            <!-- / Content -->

</body>
