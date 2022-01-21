<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    if(session.getAttribute("user") != null) 
    {
    %>
    <script>
        location.href='/'
    </script>
    <%
    }
%>
    
<!DOCTYPE html>
<html lang="kr">
    <head>
		<!--  META -->
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="Cache-Control" content="no-cache">

		<!-- SCRIPTS -->
		<script src="./js/app.js"></script>
		<script src="./js/jquery-3.6.0.js"></script>
		<script>
			window.onload = () => {
				showFindAccountId();
			}
		</script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">

		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
    
    <body>
	    <div id="app" style="display:flex;">
    		<div id="find-account-cover"></div>
	   		<div id="find-account-container">
	    		<div id="find-wrap">
	    			<h1 style="text-align: center">계정 찾기</h1>
	    			<div id="find-wrap-button-container" style="display: flex; justify-content: center; margin-top: 20px">
	    				<button onclick="showFindAccountId()" style=" padding: 10px; background-color:white; border: solid black 1px; margin-right: 10px">아이디 찾기</button>
	    				<button onclick="showFindAccountPw()"  style=" padding: 10px;  background-color:white; border: solid black 1px;">비밀번호 찾기</button>
	    			</div>
	    			
	    			<div id="find-wrap-view-container" style="margin-top: 20px">
	    				<div id="find-wrap-id">
		    				이메일
		    				<input type="email" style="width: 100%">
		    			</div>
		    			
		    			<div id="find-wrap-pw" >
		    				이메일<input type="email" style="width: 100%; margin-bottom: 40px"> <br>
		    				아이디 <input type="text" style="width: 100%"> <br>
		    			</div>
	    			</div>
	    			<div style="display: flex; justify-content: center; margin-top: 20px">
		               		<button class="default-button button-positive" onclick="signup()">찾기</button>
		               		<button onclick="location.href='/'" class="default-button button-negative">취소</button>
             			</div>
	    		</div>
	    		
    		</div>
    		
    		
   		</div>
    	
    </body>
</html>