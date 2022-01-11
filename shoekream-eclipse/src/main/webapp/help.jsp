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
		<script src="./js/jquery-3.6.0js"></script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
			.btn {
				color:white;
				width:110px;
				height:50px;
				display:inline-block;
				box-sizing:border-box;
				padding:14px 0px;
			}
			
			a{
				text-decoration:none;
				color:black;
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
					<table border="0" style="width:300px; height:500px; float:left;">
						<tr>
							<td valign="top">
								<div style="height:100px;"><a href="./notice.jsp">공지사항</a></div>
								<div style="height:100px;"><a href="./faq.jsp">자주 묻는 질문</a></div>
								<div style="height:100px;"><a href="./policy.jsp">검수 기준</a></div>
								<div style="height:100px;"><a href="./help.jsp">문의하기</a></div>
							</td>
						</tr>
					</table>
					<table border="0" style="width:800px; height:100%; float:center;">
						<h2>문의하기</h2>
						<tr><td style="border-bottom:1px solid; height:1px;" colspan="2"></td></tr>
						<tr>
							<td style="width:100px;">이름</td>
							<td>슈크림</td>
						</tr>
						<tr>
							<td>구분</td>
							<td>
								<input type="radio" name="kind">상품문의
								<input type="radio" name="kind">이의제기
							</td>
						</tr>
						<tr>
							<td>제목</td>
							<td>
								<input type="text">
							</td>
						</tr>
						<tr>
							<td colspan="2">문의내용</td>
						</tr>
						<tr>
							<td colspan="2">
							<textarea style="width:500px; height:300px;"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align:center;">
								<a href="#"><span class="btn" style="background-color: #5ED1E9;">문의하기</span></a>
								&nbsp;&nbsp;&nbsp;
								<a href="#"><span class="btn" style="background-color: #E95E5E;">취소</span></a>
							</td>
						</tr>
					</table>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>