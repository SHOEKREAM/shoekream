<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		
		<!-- SCRIPT -->
		<script src="./js/jquery-3.6.0.js"></script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
		
		
		<%
		
			Cookie []cookies = request.getCookies();
			if(cookies != null)
			{
				for(Cookie cookie : cookies)
				{
					String cookie_name = cookie.getName();
					String cookie_id = cookie.getValue();
					if(cookie_name.equals("save_id"))
					{
						%>
						
						<script>
							window.onload = () => {
								$('#login-id').val('<%= cookie_id %>');
							}
						</script>
						<%
					}
				}
			}
			
		%>
		<script>
			
		
			function login() 
			{
				const id = $('#login-id').val();
				const pw = $('#login-pw').val();
				const isSave = $('#login-saveid').is(":checked");
				
				if(id === '' || pw === '') alert('아이디 또는 비밀번호를 입력해 주세요');
				else {
					$.ajax({
						
						url: 'login.do',
				        method: 'POST',
				        data: {
				           'id' : id,
				           'pw' : pw,
				           'isSaveId' : isSave
				        },
				        success : (response) => {
				        	
							if(response.result === 'OK') location.href='/';
							else alert('아이디 또는 비밀번호가 맞지 않습니다');
				        }	      
					})
				}
				
			}
		</script>
	</head>
    
    <body>
    	<div id="app" style="display:flex;">
    		<div id="login-cover"></div>
    		<div id="login-container">
		    		<div id="login-wrap">
	    				<div id="login-title"><h1>로그인 하기</h1></div>
							<div id="login-text">아이디</div>
							<div><input id="login-id" type="text" style="font-size:20px;" onkeypress="javascript:if(event.keyCode==13){login()}"></div>
							<div id="">비밀번호</div>
							<div><input id="login-pw" type="password" style="font-size:20px;" onkeypress="javascript:if(event.keyCode==13){login()}"></div>
							<div><input id="login-saveid" type="checkbox" style=" margin-right: 4px">아이디 저장</div>
							<button class="default-button button-positive" onclick="login()">로그인</butoon></button>
							<div><a href="./signup"><b>회원가입</b></a> 또는 <a href="./find_account"><b>아이디</b></a> 
							또는 <a href="./find_account"><b>비밀번호</b></a>가 생각나지 않아요</div>
		    			</div>
		    		</div>
		    	</div>
    	</div>
    	
    </body>
</html>