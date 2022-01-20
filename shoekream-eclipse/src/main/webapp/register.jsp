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
		<script>
			window.onload = function() 
			{
				$(".notice_wrap").hide();
			}
			function ShowNotice(id) 
			{
				$("#notice" + id).toggle();
			}
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
					<div><h1>상품등록</h1></div>
					
					<div id="register-table" style="display: flex;">
						<div style="width: 812px">
							<div class="register-input-container">
								<h2>브랜드명</h2>
								<div>
									<input type="radio" name="brand"> 발렌시아
									<input type="radio" name="brand"> Dunk
									<input type="radio" name="brand"> Jordan 1
									<input type="radio" name="brand"> AirpPos
									<input type="radio" name="brand"> Marziela
																		
								</div>
							</div>
							
							<div class="register-input-container">
								<h2>제품명</h2>
								<input type="text" style="width:50%">
							</div>
							
							<div class="register-input-container">
								<h2>제품상태</h2>
								<div>
									<input type="radio" name="quality"> 상
									<input type="radio" name="quality"> 중
									<input type="radio" name="quality"> 하
																		
								</div>
							</div>
							
							<div class="register-input-container">
								<h2>사이즈</h2>
								<div>
									<input type="radio" name="size"> 220
									<input type="radio" name="size"> 240
									<input type="radio" name="size"> 250
									<input type="radio" name="size"> 260
									<input type="radio" name="size"> 270
									<input type="radio" name="size"> 280
									<input type="radio" name="size"> 290
									<input type="radio" name="size"> 300
																		
								</div>
							</div>
							
							<div class="register-input-container">
								<h2>판매가</h2>
								<input type="number" style="width: 50%">
							</div>
							
						</div>
						
						<div class="register-input-container" style="width: 812px;">
						
							<h2>제품설명</h2>
							<div style="border: solid black 1px; width:100%; height: 400px"></div>
						</div>
					</div>
					
					
					<div style="display: flex; justify-content: center; margin-top: 50px">
						<button class="default-button button-positive">등록하기</button>
						<button class="default-button button-negative">취소하기</button>
					</div>
					
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>