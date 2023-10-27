<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${sessionScope.memberId eq null}">
		<script>
			alert("로그인을 먼저 진행해주세요.");
			location.href = "${contextPath}/member/login";
		</script>
	</c:if>

<!-- Start Hero Section -->
	
			<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>회원정보 수정</h1>
							</div>
						</div>
						<div class="col-lg-7">
						</div>
					</div>
				</div>
				 <div class="usermodify-secession" align="right">
       					 탈퇴를 원하시면 우측의 회원탈퇴 버튼을 눌러주세요.
       					 <a class="usermodify-secession-btn" href="secession.pang">회원탈퇴</a>
   					 </div>
    
		<!-- End Hero Section -->
		
		<form class="InfoForm" action="${contextPath }/mypage/modifyInfo" method="post">
		<!-- Start Header/Navigation -->

		<!-- Start Hero Section -->
				<div class="container">
					<div class="row justify-content-between">
					</div>
				</div>
		<!-- End Hero Section -->

		    <div class="container">
		      <div class="row mb-5">
		        <div class="col-md-12">
		        </div>
		      </div>
		      <div align="center">
		        <div class="col-md-6 mb-5 mb-md-0">
		          <div class="p-3 p-lg-5 border bg-white">
		            <div class="form-group">
		            <h2 class="h4 mb-3 text-black">내 가입 정보</h2>
		              <label for="memberId" class="text-black"><span class="text-danger"></span></label>
		              <p align="left">아이디 <span>*</span></p>
		             <input type="email" class="form-control" id="memberId" name="memberId"  value="${memberDTO.memberId}" readonly>
		            <div><span id="result_checkId" style="font-size:12px;"></span></div>
		            </div>
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="nickname" class="text-black"><span class="text-danger"></span></label>
		                <p align="left">닉네임 <span>*</span></p>
		                <input type="text" class="form-control" id="nickname" name=nickname value="${memberDTO.nickname}">
		              </div>
		            </div>
		            
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="passwd" class="text-black"><span class="text-danger"></span></label>
		                <p align="left">비밀번호 <span>*</span></p>
		                <input type="text" class="form-control" id="passwd" name="passwd" value="${memberDTO.passwd}">
		                <p id="idcheck"></p>
		              </div>
		            </div>
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="memberNm" class="text-black"><span class="text-danger"></span></label>
		                <p align="left">이름 <span>*</span></p>
		                <input type="text" class="form-control" id="memberNm" name="memberNm" value="${memberDTO.memberNm}">
		                <p id="Nmcheck"></p>
		              </div>
		            </div>
		            
		            <div class="form-group row">
		              <div class="col-md-12">
                        <p>성별 <span style="color:red;"></span>
			                           남 &nbsp;<input type="radio" name="sex" value="m" <c:if test="${memberDTO.sex eq 'm'}">checked</c:if>>
			                           여 &nbsp;<input type="radio" name="sex" value="w" <c:if test="${memberDTO.sex eq 'w'}">checked</c:if>>
                        </p>
                      </div>
		            </div>
		            <p align="left">배송지 <span>*</span></p>
		            <div>배송지 주소 관리는 <a href="${contextPath }/member/addresslist" id=""><strong>[배송지 관리]</strong></a>에서 수정, 등록 합니다.</div>
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="hp" class="text-black"><span class="text-danger"></span></label>
		                <input type="text" class="form-control" id="hp" name="hp" value="${memberDTO.hp }">
		                <p id="hpcheck"></p>
		             	<label for="smsstsYn">
                               (선택) BMS에서 발송하는 SMS 소식을 수신합니다.
                              <input type="checkbox" id="smsstsYn" name="smsstsYn" value="Y" <c:if test="${memberDTO.smsstsYn eq 'Y'}">checked</c:if>>
                              <span class="checkmark"></span>
                          </label>
		              </div>
		            </div>
		            
		            <div class="form-group row">
		              <div class="col-md-12">
		                <label for="email" class="text-black"><span class="text-danger"></span></label>
		                <input type="text" class="form-control" id="email" name="email" value="${memberDTO.email}">
		                <p id="Emcheck"></p>
		             	<label for="emailstsYn">
                            (선택) BMS에서 발송하는 E-mail 소식을 수신합니다.
                              <input type="checkbox" id="emailstsYn" name="emailstsYn" value="Y" <c:if test="${memberDTO.emailstsYn eq 'Y'}">checked</c:if>>
                              <span class="checkmark"></span>
                          </label>
		              </div>
		            </div>&emsp;
		          <tr>
					<td colspan="2" align="left">
						<button type="submit">수정 하기</button>
					</td>
				  </tr>

		                </div>

		              </div>
		            </div>

		          </div>
		        </div>
		        <div class="col-md-6">

		        </div>
		      </div>
		      </form>
		    </div>



</body>
</html>