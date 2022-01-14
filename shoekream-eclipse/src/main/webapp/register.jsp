<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
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
		<style>
			table 
			{
				margin-left: auto;
				margin-right: auto;
			}
			
			h2
			{
				margin-left: auto;
				margin-right: auto;
				background-color: red;
			}
			
			input[type=text] 
			{
				border: 0px;
				border-bottom: #B0B0B0 2px solid;
			}
			
			input:focus 
			{
				outline: none;
			}
			
			td 
			{
				height: 50px;
			}
			
			.btn 
			{
				color: white;
				width: 110px;
				height: 50px;
				display: inline-block;
				box-sizing: border-box;
				padding: 12px 0px;
				border-radius: 15px;
			}
			.shoe 
			{
				color: black;
				width: 110px;
				height: 50px;
				display: inline-block;
				box-sizing: border-box;
				padding: 12px 0px;
				border-radius: 15px;
			}		
			.size 
			{
				color: black;
				width: 50px;
				height: 50px;
				display: inline-block;
				box-sizing: border-box;
				padding: 12px 0px;
				border-radius: 15px;
			}
			</style>
		
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
					<table border="1" width="Auto" height="Auto" style="ailgn: center;">
						<!-- 상품 등록 제목 -->
						<tr>
							<td style="text-align: center; font-size: 20px;">상품 등록</td>
						</tr>
						<!-- 상품 등록 제목 -->
						
						<!-- 브랜드 명 -->
						<tr>
							<th style="text-align: left;">브랜드명</th>
							
							<!-- 사이 여백 -->
							<td rowspan="12" style="height: 30px; width: 50px;"></td>
							<!-- 사이 여백 -->
							
							<!-- 제품 설명 -->
							<th style="text-align: left;">제품 설명</th>
							<!-- 제품 설명 -->
						</tr>
						<!-- 브랜드 설정칸 -->
						<tr>
							<td>
								<table border="0">
									<tr>
										<td><a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;">
												<span class="shoe" style="background-color: #F5F5F5; width: 100px; text-align: ceter;">발렌시아가</span></a>
											&nbsp; <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;">
												<span class="shoe" style="background-color: #F5F5F5; width: 100px; text-align: ceter;">Dunk</span></a>
											 &nbsp; <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;">
												<span class="shoe" style="background-color: #F5F5F5; width: 100px; text-align: ceter;">Jodan 1</span></a>
											 &nbsp; <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;">
												<span class="shoe" style="background-color: #F5F5F5; width: 100px; text-align: ceter;">에어포스</span></a>
											 &nbsp; <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;">
												<span class="shoe" style="background-color: #F5F5F5; width: 100px; text-align: ceter;">마르지엘라</span></a>
											 &nbsp;
										</td>
									</tr>	
									<tr>
										<td>
											<a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;">
											<span class="shoe" style="background-color: #F5F5F5; width: 100px; text-align: ceter;">Off-White</span></a>
										</td>
									</tr>
								</table>
							</td>
							<!-- 브랜드 설정칸 -->
							
							<!-- 제품 설명 입력 -->
							<td rowspan="11">
								<textarea style="width: 300px; height: 500px; resize: none;">
								</textarea>	
							</td>
							<!-- 제품 설명 입력 -->
						
							<!-- 제품 명 입력 칸 -->
						<tr>
							<th style="text-align: left;">제품명</th>
						</tr>
						
						<tr>
							<td>
								<input type="text" style="font-size: 20px; width: 620px;">
							</td>
						</tr>
							<!-- 제품 명 입력 칸 -->
						
						<!-- 제품 상태 선택 -->
						<tr>
							<th style="text-align: left;">제품 상태</th>
						</tr>
						<tr>
							<td>
								<input type="radio" name="State" value="상">상 &nbsp;
								<input type="radio" name="State" value="중">중 &nbsp; 
								<input type="radio" name="State" value="하">하
							</td>
						</tr>
						<!-- 제품 상태 선택 -->
						
						<!-- 검수 인증 여부 체크 -->
						<tr>
							<th style="text-align: left;">검수 인증여부</th>
						</tr>
						<tr>
							<td>
								<input type="radio" name="Certified" value="O">O &nbsp;
						 		<input type="radio" name="Certified" value="X">X &nbsp;
							</td>
						</tr>
						<!-- 검수 인증 여부 체크 -->
						
						<!-- 사이즈 클릭 -->
						<tr>
							<th style="text-align: left;">사이즈</th>
						</tr>
							<td>
								<table style="text-align: left;">
									<tr>
										<td><a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
												<span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">220</span>
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">230</span>
										 
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">240</span>
										 
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">250</span>
										
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">260</span>
										 
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">270</span>
										 
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">280</span>
										
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">290</span>
										 
										 <a href=# style="color: black; text-decoration: none; text-align: center; font-size: 15px;"></a>
										 <span class="size" style="background-color: #F5F5F5; width: 50px; height: auto; text-align: ceter;">300</span>	
										</td>
									</tr>
								</table>
							</td>
							<!-- 사이즈 클릭 -->	
						<tr>
							<th style="text-align: left;">판매가</th>
						</tr>
						<tr>
							<td><input type="text" style="font-size: 20px;"></td>
						</tr>
						<tr>
							<th style="text-align: left;">상품 이미지 등록</th>
						</tr>
						<!-- 이미지 등록 -->
						<tr>
							<td>
								<table>
									<tr>
										<td></td>
									</tr>
								</table>
							</td>
						</tr>
						<!-- 이미지 등록 -->
						
						<!-- 등록 하기 취소하기 버튼 -->
						<table align="center" style="text-align: center; font-size: 20px;">
							<tr>
								<td><a href="#" style="color: black; text-decoration: none">
										<span class="btn" style="background-color: #FF9595; width: 250px;">등록하기</span>
									</a> <a href="#" style="color: black; text-decoration: none"> 
									<span class="btn" style="background-color: #0078D7;">취소</span></a>
								</td>
							</tr>
						</table>
						<!-- 등록 하기 취소하기 버튼 -->
						
					</table>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>