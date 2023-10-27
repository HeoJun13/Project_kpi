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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function execDaumPostcode(){
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	            document.getElementById('postcode').value = data.zonecode
	            document.getElementById('address').value = addr
	            document.getElementById('detailAddress').focus()
	        }
	    }).open();
	}
	
	
	
</script>
<body>

<!-- Start Hero Section -->
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
    
		<form name="addressForm" action="${contextPath }/member/addressadd" method="post">
    <div class="container">
		      <div class="row mb-5">
		        <div class="col-md-12">
		        </div>
		      </div>
		      <div align="center">
		        <div class="col-md-6 mb-5 mb-md-0">
		          <div class="p-3 p-lg-5 border bg-white">
		            <div class="form-group">
		            <h2 class="h4 mb-3 text-black"></h2>
		              <label for="memberId" class="text-black"><span class="text-danger"></span></label>
		             <input type="text" class="form-control" id="recipientNm" name="recipientNm"  placeholder="받는 사람">
		            </div>
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="nickname" class="text-black"><span class="text-danger"></span></label>
		                <input type="text"  id="postcode" name="postcode" class="form-control" placeholder="우편번호" readonly="readonly">
		                <input type="button"  onclick="execDaumPostcode()" name="" value="우편번호 찾기"><br>
		                <input type="text" class="form-control" id="address" name="address" placeholder="주소">
		                <input type="text" class="form-control" id="detailAddress" name="detailAddress" placeholder="상세 주소">
		              </div>
		            </div>
		            
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="passwd" class="text-black"><span class="text-danger"></span></label>
		                <input type="text" class="form-control" id="recipientHp" name="recipientHp" placeholder="휴대폰 번호">
		              </div>
		            </div>

		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="delivery" class="text-black">배송 요청사항</label>
		               <select id="deliveryRequest" name="deliveryRequest" class="form-control">
                          <option>메세지를 선택해 주세요.</option>
                          <option value="directly">직접입력</option>
                          <option value="beforeDelivery">배송전,연락 부탁드립니다.</option>
                          <option value="Call">부재시,전화또는 문자 주세요.</option>
                          <option value="expense">부재시,경비(관리)실에 맡겨주세요.</option>
                        </select>
		              </div>
		            </div>
		          <tr>
					<td colspan="2" align="left">
						<button type="submit">저장</button>
					</td>
				  </tr>
		                </div>
		              </div>
		            </div>
		          </div>
		        </form>
</body>
</html>