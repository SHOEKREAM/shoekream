<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("user") == null) 
    {
    %>
    <script>
    	alert('잘못된 접근입니다')
        location.href='/'
    </script>
    <%
    }
%>

<!DOCTYPE html>
<html>
	<head>
		<!--  META -->
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="Cache-Control" content="no-cache">

		<!-- SCRIPTS -->
		<script src="./js/jquery-3.6.0.js"></script>
		<script src="./js/app.js"></script>
		<script>
       		
        </script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		
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
		</script>
		
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
	<body>
		<div id="app">
			<div id="container">
				<!-- Header -->
				<jsp:include page="./header.jsp"/>
				
				<!-- Main -->
				<div>
					<h1>마이페이지</h1>
					
					<form method="post" action="#">
						<table id="mypage-table">
							<tr>
								<td id="mypage-head">이름</td>
								<td id="mypage-name">ㅁㅁ</td>
							</tr>
							
							<tr>
								<td id="mypage-head">비밀번호</td>
								<td id="mypage-password">
									<input type="password"  size="20" >
		                    		<input type="button" value="비밀번호 변경" onclick="showPopuppw();">
								</td>
							</tr>
							
							<tr>
								<td id="mypage-head">이메일</td>
								<td id="mypage-password">
									<input type="text"  size="20" >
				                    @
				                    <input type="text"  size="20" >
				                    <input type="button" value="이메일 변경" onclick="showPopupmail();">
								</td>
							</tr>
							
							<tr>					
			                    <td id="mypage-head">연락처</td>
			                    <td>
				                    <input type="text"  size="5" > - <input type="text"  size="5" > - <input type="text"  size="5" >
				                    <input type="button" value="연락처 변경" onclick="showPopuptel();">
		                    	</td>
		                	</tr>
			                <tr>
			                    <td id="mypage-head">주소</td>
			                    <td>
			                    	<div>
			                    		우편번호 <input type="text" size="10" id="postal" name="postal">
			                    		<input type="button" value="우편번호" onclick="findAddrss()"><br>
			                    	</div>
				                    
				                    기본주소 <input type="text" id="adress" name="adress" size="45" ><br>
				                    나머지주소 <input type="text" id="remainder" name="remainder" size="45" >						
			                    </td>
			                </tr>
			                <tr>
			                    <td id="mypage-head">가입일</td>
			                    <td>2022-01-04  D+10</td>
			                </tr>
			                
						</table>
						
						<div stly="display: flex; justify-content: center">
							<button class="default-button button-positive" onclick="applyMypage()">변경하기</button>	
							<button class="default-button button-negative" onclick="unregister();">회원탈퇴</button>						
						</div>
					</form>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>