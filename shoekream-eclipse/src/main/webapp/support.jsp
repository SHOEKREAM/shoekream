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
					<div id="support-container">
		                <div id="support-nav-container" >
		                    <div><a href="./notice"><h1>#공지사항</h1></a></div>
		                    <div><a href="./faq"><h1>#자주묻는질문</h1></a></div>
		                    <div><a href="./policy"><h1>#검수기준</h1></a></div>
		                    <div><a href="./help"><h1>#문의목록</h1></a></div>
		                </div>
		                <div id="support-container-content">
		                  
		                </div>
		            </div>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>