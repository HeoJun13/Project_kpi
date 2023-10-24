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
								<h1>주문/결재</h1>
							</div>
						</div>
						<div class="col-lg-7">
							
						</div>
					</div>
				</div>
		<!-- End Hero Section -->
		
		<div class="breadcrumb-option" align="right">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="#"><i class="text-black font-weight-bold"></i><strong>주문결제</strong></a>
                        < <a href="#"> 주문완료</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
		<div class="untree_co-section" align="center">
		  <div class="row mb-5">
		            <div class="col-md-12">
		        <div class="col-md-6 mb-5 mb-md-0" align="left">
		              <h2 class="h3 mb-3 text-black">구매자정보</h2>
		              <div class="p-3 p-lg-5 border bg-white">
		              <table class="table site-block-order-table mb-3" border="1">
						<thead>
		                    <th></th>
		                    <th></th>
		                    <th></th>
		                    <th></th>
		                  </thead>
		                 <div class="form-group">
		               <tr>
	                      <td class="text-black font-weight-bold" align="right"><strong>이름 :</strong></td>
	                      <td class="text-black">허준호</td>
	                      <td></td>
		               </tr>
		            </div>
		            <div class="form-group row">
		              <div class="col-md-6">
		               <tr>
	                      <td class="text-black font-weight-bold" align="right"><strong>이메일 :</strong></td>
	                      <td class="text-black">wnsgh9857@gmail.com</td>
		              	  <td></td>
		               </tr>
		              </div>
		            </div>

		            <div class="form-group row">
		              <div class="col-md-12">
		                <tr>
	                      <td class="text-black font-weight-bold" align="right"><strong>연락처 :</strong></td>
	                      <td class="text-black">010-4924-0872</td>
		               	  <td></td>
		               </tr>
		              </div>

		              </div>
		              </table>
		            </div>
		          </div>
		            </div>
		             </div> 
		            
 				 <div class="row mb-5">
		            <div class="col-md-12">
		        <div class="col-md-6 mb-5 mb-md-0" align="left">
		              <h2 class="h3 mb-3 text-black">받는사람정보</h2>
		              <div class="p-3 p-lg-5 border bg-white">
		                <table class="table site-block-order-table mb-3" border="1">
		                <thead>
		                    <th></th>
		                    <th></th>
		                    <th></th>
		                    <th></th>
		                  </thead>
		                  
		            <div class="form-group row">
		              <div class="col-md-6">
		              <tr>
		                <td class="text-black font-weight-bold" align="right"><strong>이름 :</strong></td>
		                <td class="text-black"  id="" name="" >허준호</td>
		              </tr>
		              </div>
		            </div>
		           
		            <div class="form-group row">
		              <div class="col-md-12">
		              <tr>
		                <td class="text-black font-weight-bold" align="right"><strong>주소 :</strong></td>
		                <td class="text-black"  id="" name="" >서울시 송파구 오금동 115-5번지 201호</td>
		              </tr>
		              </div>
		            </div>


		            <div class="form-group row mb-5">
		              <div class="col-md-6">
		              <tr>
		                <td class="text-black font-weight-bold" align="right"><strong>연락처 :</strong></td>
		                <td class="text-black" id="" name="">010-4924-0872</td>
		              </tr>
		              </div>
		            </div>

	                  <div class="form-group row  mb-3">
	                    <div class="col-md-12">
	                    <tr>
	                      <td class="text-black font-weight-bold" align="right"><strong>배송 요청사항 :</strong></td>
	                      <td class="text-black" id="" name="" ></td>
	                    </tr>
	                    </div>
	                  </div>

		                </table>

		          </div>
		          </div>
		         </div>
		        </div>
		     
		        <div class="col-md-6">

		          <div class="row mb-5">
		            <div class="col-md-12" align="left">
		              <h2 class="h3 mb-3 text-black">결제정보</h2>
		              <div class="p-3 p-lg-5 border bg-white">
		                <table class="table site-block-order-table mb-5">
		                  <thead>
		                    <th></th>
		                    <th></th>
		                    <th></th>
		                  </thead>
		                  <tbody>
		                    <tr>
		                      <td>Top Up T-Shirt <strong class="mx-2">x</strong> 1</td>
		                      <td>$250.00</td>
		                    </tr>
		                    <tr>
		                      <td>Polo Shirt <strong class="mx-2">x</strong>   1</td>
		                      <td>$100.00</td>
		                    </tr>
		                    <tr>
		                      <td class="text-black font-weight-bold"><strong>Cart Subtotal</strong></td>
		                      <td class="text-black">$350.00</td>
		                    </tr>
		                    <tr>
		                      <td class="text-black font-weight-bold"><strong>Cart Subtotal</strong></td>
		                      <td class="text-black">$350.00</td>
		                    </tr>
		                    <tr>
		                      <td class="text-black font-weight-bold"><strong>총결제 금액</strong></td>
		                      <td class="text-black font-weight-bold"><strong>$350.00</strong></td>
		                    </tr>
		                    <tr>
		                      <td class="text-black font-weight-bold"><strong>결재방법</strong></td>
		                      <td class="text-black">
		                      <div class="type-selector-list-wrapper">
       							 <ul id="payTypeList" class="type-selector-list">

				            <li id="rocketPayBox" class="type-selector-li">
				                <input class="type-selector-radio" type="radio" name="payType" id="payType8" value="ROCKET_BANK">
				                <label class="type-selector-label type-selector-label--bank" for="payType8" style="font-weight: normal;">
				                    <span class="type-selector-label__text">계좌이체</span>
				                </label>
				            </li>
				
				                <li id="rocketPayCardBox" class="type-selector-li selected-pay-type">
				                    <input class="type-selector-radio" type="radio" name="payType" id="payType10" value="ROCKET_CARD">
				                    <label class="type-selector-label type-selector-label--card" for="payType10" style="font-weight: bold;">
				                        <span class="type-selector-label__text">신용/체크카드</span>
				                    </label>
				                </li>
            
				            
				                <li id="cardPayBox" class="type-selector-li">
				                    <input class="type-selector-radio" type="radio" name="payType" id="payType1" value="CARD">
				                    <label class="type-selector-label" for="payType1" style="font-weight: normal;">
				                        <span class="type-selector-label__text">법인카드</span>
				                    </label>
				                </li>
            
           				  <td class="text-black">
			                    <li id="phonePayBox" class="type-selector-li">
			                        <input class="type-selector-radio" type="radio" name="payType" id="payType6" value="PHONE">
			                        <label class="type-selector-label" for="payType6" style="font-weight: normal;">
			                            <span class="type-selector-label__text">휴대폰</span>
			                        </label>
			                    </li>
			                
            
				            
				                <li id="virtualAccountPayBox" class="type-selector-li">
				                    <input class="type-selector-radio" type="radio" name="payType" id="payType7" value="VIRTUALACCOUNT">
				                    <label class="type-selector-label" for="payType7" style="font-weight: normal;">
				                        <span class="type-selector-label__text">무통장입금(가상계좌)</span>
				                    </label>
				                </li>
					            
					        </ul>
					        <p class="validate-message" style="display: none;"></p>
					    </div>
		             </td>
		          </tr>
		                  </tbody>
		                </table>

		                

		                <div class="form-group" align="center">
		                <p>위 주문 내용을 확인 하였으며, 회원 본인은 개인정보 이용 및 제공 및 결제에 동의합니다.</p>
		                  <button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location='thankyou.html'">결제하기</button>
		                </div>

		              </div>
		            </div>
		          </div>

		        </div>
		      </div>
		      <!-- </form> -->
		    </div>
		  </div>


</body>
</html>