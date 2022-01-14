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
				
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>