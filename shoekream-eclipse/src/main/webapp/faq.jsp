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

		<script>
			window.onload = function()
			{
				$(".faq-wrap").hide();
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
					<div id="support-container">
		                <div id="support-nav-container" >
		                    <div><a href="./notice.jsp"><h1>#공지사항</h1></a></div>
		                    <div><a href="./faq.jsp"><h1>#자주묻는질문</h1></a></div>
		                    <div><a href="./policy.jsp"><h1>#검수기준</h1></a></div>
		                    <div><a href="./inquire.jsp"><h1>#문의하기</h1></a></div>
		                </div>
		                
		                 <div id="support-container-content">
		                    <div id="container-content-header"><h2>자주묻는질문</h2></div>
		                    
		                    <div id="content-container">
		                        <div id="faq-container">
		                            <div class="faq-item">
		                                <div id="faq-item-info">
		                                    <div id="question" onclick="unfoldFAQ(1)">Q. aaa</div>
		                                    <div id="answer-1" class="faq-wrap">A. bbb</div>
		                                </div>
		                            </div>
		                        </div>
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