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
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
						a
			{
				text-decoration:none;
				color:white;
			}
			.bigbox
			{
				display: flex;
			}
			.smallbox
			{
				margin-left: 20px;
				margin-right: 20px;
			}
			div
			{
				display: inline-block;
			}
			td
			{
				height: 50px;
			}
			.btnAll
			{
				display: flex;
				flex-direction: column-reverse;
				flex-wrap: wrap-reverse;
			}
			.btn
			{
				width: 100px;
				height: 20px;
				margin: 20px;
				vertical-align:top;
				text-align: center;
				padding: 25px 00px;
				border-radius: 15px;
			}
			.a
			{
				background-color: #E95E5E;
			}
			.b
			{
				background-color: #5ED1E9;
			}
			.c
			{
				background-color: #5E71E9;
			}
			.d
			{
				background-color: #5ED1E9;
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
					<div style="text-align: center;">
					<h1 style="text-align: center;">검수 관리</h1>
					<div>
						<a style="color:black;"><b>과거 검수 이력</b></a>
						<a href="./current_item_check.jsp" style="margin-left:20px; color:black;">현재 접수된 목록</a>
					</div>
					<br><br><br>
					<div style="width:1000px; height:350px;" class="bigbox">
						<div class="smallbox" style="float:left;"><img src="image/shoes.jpg" style="width:300px; height:300px;"></div>
						<div class="smallbox" style="float:center; width:300px;">
							<table style="text-align: left;">
								<tr>
									<td style="width:100px;">상품명</td>
									<td>Jordan Air 123456</td>
								</tr>
								<tr>
									<td>브랜드명</td>
									<td>Jordan</td>
								</tr>
								<tr>
									<td>가격</td>
									<td>123,456,789 원</td>
								</tr>
								<tr>
									<td>검수 요청일</td>
									<td>2022-01-01</td>
								</tr>
								<tr>
									<td>검수 완료일</td>
									<td>2020-01-02</td>
								</tr>
								<tr>
									<td>판매자</td>
									<td>박주연</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>