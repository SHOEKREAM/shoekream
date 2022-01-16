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
					<div id="support-container" style="display: flex">
		                <div id="support-nav-container" >
		                    <div><a href="./notice.jsp"><h1>#공지사항</h1></a></div>
		                    <div><a href="./faq.jsp"><h1>#자주묻는질문</h1></a></div>
		                    <div><a href="./policy.jsp"><h1>#검수기준</h1></a></div>
		                    <div><a href="./inquire.jsp"><h1>#문의하기</h1></a></div>
		                </div>
		                
		                 <div id="support-container-content" style=" width:100%">
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
				
				<!-- 
				<div>
					<table border="0" style="width:300px; height:500px; float:left;">
						<tr>
							<td valign="top">
								<div style="height:100px;"><a href="./notice.jsp">공지사항</a></div>
								<div style="height:100px;"><a href="./faq.jsp">자주 묻는 질문</a></div>
								<div style="height:100px;"><a href="./policy.jsp">검수 기준</a></div>
								<div style="height:100px;"><a href="./inquire.jsp">문의하기</a></div>
							</td>
						</tr>
					</table>
					
					<table border="0" style="width:800px; height:100%; float:center;">
						<h2>자주 묻는 질문</h2>
						<tr><td style="border-bottom:1px solid; height:1px;" colspan="3"></td></tr>
						<tr>						
							<td style="width:50px; height:50px;">1</td>
							<td><a href="javascript:ShowNotice(1);">Q. 환불은 어떻게 하나요?</a></td>
							<td style="width:100px;">2022-01-01</td>
						</tr>
						<tr id="notice1" class="notice_wrap">
							<td></td>
							<td colspan="2">
								A. 고객님들끼리 협의 하에 하시면 됩니다.
							</td>
						</tr>
						<tr>						
							<td style="width:50px; height:50px;">2</td>
							<td><a href="javascript:ShowNotice(2);">Q. 사기를 안당하려면 어떻게 해야하나요?</a></td>
							<td style="width:100px;">2022-01-01</td>
						</tr>
						<tr id="notice2" class="notice_wrap">
							<td></td>
							<td colspan="2">
								A. 모르겠는데요.
							</td>
						</tr>
					</table>
				</div> -->
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>