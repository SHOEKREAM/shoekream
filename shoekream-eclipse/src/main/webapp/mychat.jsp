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
		<script src="./js/app.js"></script>
		<script src="./js/jquery-3.6.0.js"></script>
		
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
					<h1>나의 채팅</h1>
					<div id="mychat-container">
						<div id="mychat-list">
							<div class="mychat-list-item-container" >
								<div class="mychat-list-item">
									<div style="width: 60px; height: 60px; background-color: black; border-radius: 100%"></div>
									<div id="mychat-info-container" style=" display: flex; align-items: center">
										<div style="margin-left: 10px; ">
											<div>dddd</div>
											<div>dsa</div>
										</div>
									</div>
								</div>
								
								
								
							</div>
						</div>
						
						<div id="mychat-wrap" style="background-color:green">
							<div id="chat">
							
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