<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	    			<h1>계정 찾기</h1>
	    			<div id=find-wrap-button-container>
	    				<button onclick="showFindAccountId()">아이디 찾기</button>
	    				<button onclick="showFindAccountPw()">비밀번호 찾기</button>
	    			</div>
	    			
	    			<div id="find-wrap-view-container">
	    				<div id="find-wrap-id">
		    				이메일
		    				<input type="email">
		    			</div>
		    			
		    			<div id="find-wrap-pw">
		    				이메일<input type="email"> <br>
		    				아이디 <input type="text"> <br>
		    			</div>
	    			</div>
	    		</div>
    		</div>
   		</div>
    	
    </body>
</html>