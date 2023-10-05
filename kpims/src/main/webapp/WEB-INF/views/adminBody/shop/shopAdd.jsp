<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- Content wrapper -->
 
          <div class="content-wrapper">
          
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">상품관리/</span>상품등록</h4>

              <!-- Basic Layout -->
              <div class="row">
                <div class="col-xl">
                     <form action="${contextPath }/admin/shop/add" method="post" enctype="multipart/form-data">
                  <div class="card mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <h5 class="mb-0">상품등록</h5>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                                <div class="form-label">
                                    <p>상품이미지<span>*</span> <span class="icon_upload"></span> </p>
                                    <input type="file" id="shopFileName" name="shopFileName">
                                </div>
                           </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-fullname">상품명</label>
                          <input type="text" class="form-control" id="shopNm" name="shopNm" placeholder="상품명을 입력하세요." />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">가격</label>
                          <input type="text" class="form-control" id="price" name="price" placeholder="가격을 입력하세요." />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">할인률</label>
                          <input type="text" class="form-control" id="discountRate" name="discountRate" placeholder="할인률을 입력하세요." />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">재고</label>
                          <input type="text" class="form-control" id="stock" name="stock" placeholder="재고를 입력하세요." />
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
                                    	<option value="officeChair">사무용의자</option>
                                    	<option value="studentChair">학생/유아용의자</option>
                                    	<option value="diningChair">식당용의자</option>
                                    </select>
                                </div>
                            </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">적립포인트(P)</label>
                          <input type="text" class="form-control" id="point" name="point" placeholder="적립 포인트(P)를 입력하세요." />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company">배송비</label>
                          <input type="text" class="form-control" id="deliveryPrice" name="deliveryPrice" placeholder="배송비를 입력하세요." />
                        </div>
                        <div class="col-sm-12">
                                <div class="form-label">
                                   <div class="checkout__form__input">
                                    <p>상품소개<span>*</span></p>
                                    <textarea rows="5" cols="100" id="intro" name="intro" placeholder="상품소개를 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("intro");</script>
                                </div>
                            </div>
                        </div>
                        <div align="right">
                        <button type="submit" class="btn btn-primary">Send</button>
                      	</div>
                    </div>
                  </div>
                      </form>
                </div>
              </div>
            </div>
            <!-- / Content -->
</div>

</body>
</html>