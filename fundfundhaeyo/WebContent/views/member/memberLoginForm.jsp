<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요2</title>
<link rel="stylesheet" href="resources/css/memberLoginForm.css">
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="login_form_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div>
			<div class="login_form_main" align="center">
				<div class="login_form_main_header">
					<img src="resources/image/logo.png" alt="" width="400px" height="140px">
				</div>
				<div class="login_form_main_content">
					<form action="<%= contextPath %>/login.me" method="post">
						<div class="login_form_main_content_wrap">
							<button type="button" class="long_input_btn" style="margin-top: 25px;">
								<span>
									<i class="fa-solid fa-user fa-lg" style="margin: 0 5px 0 3px;"></i>
								</span>
								<span>
									<input type="text" name="userId" class="long_input font_outer" placeholder="아이디" required>
								</span>
							</button>
							<button type="button" class="long_input_btn" style="margin-bottom: 15px;">
								<span>
									<i class="fa-solid fa-key" style="margin: 0 5px 0 3px;"></i>
								</span>
								<span>
									<input type="password" name="userPwd" class="long_input font_outer" placeholder="비밀번호" required>
								</span>
							</button>
							<div align="left" style="margin-left: 30px;">
								<input type="checkbox"> 로그인 정보 기억
							</div>
							<div style="height: 40px;">
								<%-- 여백 --%>
							</div>
							<div class="login_btn_div"><button type="submit" class="login_btn font_sejong_outer">로그인</button></div>
							
							<br>
	
							<div>
								<div class="login_btn_search_div fl"><a class="heada texthover font_sejong_outer" href="#">아이디 찾기</a></div>
								<div class="login_btn_search_div fl"><a class="heada texthover font_sejong_outer" href="#">비밀번호 찾기</a></div>
								<div class="login_btn_search_div fl"><a class="heada texthover font_sejong_outer" href="<%= contextPath %>/moveToMemberEnroll.me">회원가입</a></div>
							</div>
							
							<br><br>
	
							<div class="login-alternative-methods font_outer">
								<span>소셜 로그인</span>
							</div>
	
							<div style="height: 17px;"><%-- 여백 --%></div>
	
							<div class="login_form_main_social">
								<%-- 추후 소셜로그인 구현 --%>구   네   카
							</div>
						</div>
					</form>
				</div>
		    </div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>