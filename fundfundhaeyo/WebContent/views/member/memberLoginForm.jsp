<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/memberLoginForm.css">
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="login_form_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="login_form_main">
			<form action="<%= contextPath %>/login.me" method="post">
		        <table>
		            <tr>
		                <th>아이디 : </th>
		                <td><input type="text" name="userId" required></td>
		            </tr>
		            <tr>
		                <th>비밀번호 : </th>
		                <td><input type="text" name="userPwd" required></td>
		            </tr>
		            <tr>
		                <th colspan="2">
		                    <button type="submit">로그인</button>
		                    <button type="button">회원가입</button>
		                </th>
		            </tr>
		        </table>
		    </form>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>