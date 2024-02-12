<%@page import="com.kh.semi1st.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>뻔뻔해요</title>
    <%-- css --%>
    <link rel="stylesheet" href="resources/css/header.css">
    <%-- js --%>
    <script src="../../resources/" rel="javascript"></script>
    <%-- icon --%>
    <script src="https://kit.fontawesome.com/4dc2c036ac.js" crossorigin="anonymous"></script>
    <%-- Latest compiled and minified CSS --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <%-- jQuery library --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <%-- Popper JS --%>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <%-- Latest compiled JavaScript --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
	@font-face {font-family: 'KNUTRUTHTTF';src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2312-1@1.1/KNUTRUTHTTF.woff2') format('woff2');font-weight: normal;font-style: normal;}
	.font_outer{font-family: KNUTRUTHTTF;font-weight: normal;font-style: normal;}
</style>
<body>
    <div class="header_outer font_outer">
        <%-- 전체 레이아웃 --%>
        <div class="ffh_wrap ffh_main">
            <%-- 헤드 --%>
            <div class="ffh_header" style="border-bottom: 1px solid lightgray;">
                <div class="ffh_header_center fl">
                    <div class="ffh_header_center1"></div>
                    <div class="ffh_header_center2">
                        <div class="ffh_header_center_left fl">
                            <div class="ffh_header_center_left1 fl"><a href="<%= contextPath %>"><div class="bg_image"></div></a></div>
                            <div class="ffh_header_center_left2 fl"><a href="<%= contextPath %>" class="heada headtext texthover <%= request.getRequestURI().equals(contextPath+"/") ? "active" : "" %>">홈<span class="bottom-bar"></span></a></div>
                            <div class="ffh_header_center_left3 fl"><a href="<%= contextPath %>/all" class="heada headtext texthover <%= request.getRequestURI().equals(contextPath+"/all") ? "active" : "" %>">전체<span class="bottom-bar"></span></a></div>
                            <div class="ffh_header_center_left4 fl"><a href="#" class="heada headtext texthover">카테고리</a></div>
                            <div class="ffh_header_center_left5 fl"><a href="#" class="heada headtext texthover">인기</a></div>
                            <div class="ffh_header_center_left6 fl"><a href="#" class="heada headtext texthover">신규</a></div>
                            <div class="ffh_header_center_left7 fl"><a href="#" class="heada headtext texthover">마감임박</a></div>
                            <div class="ffh_header_center_left8 fl"></div>
                        </div>
                        <div class="ffh_header_center_right fl">
                            <div class="ffh_header_center_right1 fl"><a href="#" class="heada headtext texthover">프로젝트 등록</a></div>
                            <div class="ffh_header_center_right2 fl"><a href="#" class="heada" onclick="moveToProductSearch();"><i class="fa-solid fa-magnifying-glass fa-xl" style="display: flex; justify-content: center; line-height: 150%;"></i></a></div>
                            <% if(loginUser == null) {%>
                            <%-- 로그인 전 --%>
                            <div class="ffh_header_center_right3 fl"><%-- 여백 --%></div>
                            <div class="ffh_header_center_right4 fl"><%-- 여백 --%></div>
                            <div class="ffh_header_center_right5 fl"><%-- 여백 --%></div>
                            <div class="ffh_header_center_right6 fl"><button class="btn" type=button onclick="moveToMemberLogin();">로그인/회원가입</button></div>
                            <% }else { %>
                            <%-- 로그인 후 --%>
                            <div class="ffh_header_center_right3 fl"><a href="#" class="heada"><i class="fa-solid fa-heart fa-xl" style="color: #ff0000; line-height: 150%;"></i></a></div>
                            <div class="ffh_header_center_right4 fl"><a href="#" class="heada"><i class="fa-regular fa-bell fa-xl" style="line-height: 150%;"></i></a></div>
                            <div class="ffh_header_center_right5 fl">
	                            <div class="dropdown">
								    <a class="heada dropdown-toggle" data-toggle="dropdown"><i class="fa-solid fa-user fa-lg" style="line-height: 190%;"></i></a>
								    <div class="dropdown-menu">
								        <a class="dropdown-item" href="<%= contextPath %>/mypage.me">마이페이지</a>
								        <a class="dropdown-item" href="<%= contextPath %>/logout.me">로그아웃</a>
								    </div>
								</div>
							</div>
                            <div class="ffh_header_center_right6 fl headtext" style="text-align:right"><%= loginUser.getUserName() %> 님</div>
                            <% } %>
                        </div>
                        <script>
                        	function moveToMemberLogin(){
                        		location.href = "<%= contextPath %>/moveToMemberLogin.me";
                        	}
                        	
                        	function moveToProductSearch(){
                        		location.href = "<%= contextPath %>/moveToProductSearch.pr";
                        	}
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>