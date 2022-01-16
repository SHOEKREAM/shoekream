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
					<div id="support-container" style="display: flex">
		                <div id="support-nav-container" >
		                    <div><a href="./notice.jsp"><h1>#공지사항</h1></a></div>
		                    <div><a href="./faq.jsp"><h1>#자주묻는질문</h1></a></div>
		                    <div><a href="./policy.jsp"><h1>#검수기준</h1></a></div>
		                    <div><a href="./inquire.jsp"><h1>#문의하기</h1></a></div>
		                </div>
		                <div id="support-container-content" style=" width:100%">
		                    <div id="container-content-header"><h2>문의하기</h2></div>
		                    <table id="help-table">
		                    	<tr><td style="height:1px;" colspan="2"></td></tr>
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
									<td><input type="text"></td>
								</tr>
								<tr><td colspan="2">문의내용</td</tr>
								<tr>
									<td colspan="2">
									<textarea id="help-input-content"></textarea>
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
                    </div>
					<!-- <table border="0" style="width:300px; height:500px; float:left;">
						
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
							<textarea style="width:100%; height:300px; resize: none;"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align:center;">
								<a href="#"><span class="btn" style="background-color: #5ED1E9;">문의하기</span></a>
								&nbsp;&nbsp;&nbsp;
								<a href="#"><span class="btn" style="background-color: #E95E5E;">취소</span></a>
							</td>
						</tr>
					</table> -->
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>