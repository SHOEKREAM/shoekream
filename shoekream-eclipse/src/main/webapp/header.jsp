<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- STYLE -->
<link rel="stylesheet" href="./css/style.css"> 
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<header>
    <div id="header-logo">
        <a href="/">SHOEKREAM</a>
    </div>
    <div id="header-menu">
        <a href="./login.jsp">로그인</a>
        <a href="./help.jsp">고객센터</a>
        <a href="./signup.jsp">회원가입</a>
        <a href="./mypage.jsp">마이페이지</a>
        <a href="./wishlist.jsp">찜 목록</a>
        <div style=" display:inline; position: relative; padding: 4px 2px;" >
           <span class="material-icons" style="display:inline; position: absolute; right: 0; top: 0;  font-size: 14px; color: red; background-color: white; border-radius: 100%; border: solid white 1px">circle</span>
           <a href="./signup.jsp" style="display:inline">나의 채팅</a>
        </div>
        <a href="./logut.jsp">로그아웃</a>
    </div>
</header>