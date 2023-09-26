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
function gerateMemberExcelExport() {
	location.href = "${contextPath}/admin/member/memberExcelExport";
}

</script>
</head>
<body>
<h3 align="center">회원 리스트</h3>
	<table border="1" style="align-content: center">
			<tr>
				<td>회원아이디</td>
				<td>회원이름</td>
				<td>닉네임</td>
				<td>휴대폰번호</td>
				<td>이메일</td>
				<td>주소</td>
				<td>가입일</td>
			</tr>
			<tbody id="memberList">
				<c:choose>
					<c:when test="${empty memberList}">
						<tr align="center">
							<td colspan="6"><strong>조회된 회원이 없습니다.</strong></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="memberDTO" items="${memberList}">
							<tr>
							<!--<td><img src="${contextPath }/member/thumbnails?fileName=${MemberDTO.profile}" width="50" height="50" alt="사진"></td> -->
								
								<td>${memberDTO.memberId}</td>
								<td>${memberDTO.memberNm}</td>
								<td>${memberDTO.nickname}</td>
								<td>${memberDTO.hp}</td>
								<td>${memberDTO.email}</td>
								<td><fmt:formatDate value="${memberDTO.joinDt}" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
			<tr>
				<td colspan="6" align="center">
					<select name="searchKeyword">
						<option value="memberId">회원아이디</option>
						<option value="memberNm">회원명</option>
						<option value="nickname">닉네임</option>
						<option value="hp">휴대폰번호</option>
						<option value="email">이메일</option>
						<option value="address">주소</option>
					</select>
					<input type="text" name="searchWord" />
				</td>
			</tr>
	</table>
	<div>
		<input type="button" value="Excel Export" onclick="location.href='${contextPath}/member/memberExcelExport'" />
		<input type="button" value="삭제" onclick="location.href='${contextPath}/admin/member/mainMember'" />
		<input type="button" value="수정" onclick="location.href='${contextPath}/admin/member/mainMember'" />
	</div>
	
</body>
</html>