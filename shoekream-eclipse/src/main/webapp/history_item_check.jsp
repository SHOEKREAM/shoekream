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
					<h1>검수 관리</h1>
					<div style="margin-top: 10px">
						<a style="color:black;"><b>과거 검수 이력</b></a>
						<a href="./current_item_check" style="margin-left:20px; color:black;">현재 접수된 목록</a>
					</div>

					<div id="check-container">
						<div id="check-item-wrap">							
							<div class="check-item">
								<div class="check-item-cover"></div>
								<div class="check-item-info" style="width:100%; display: flex; align-items: center">
									<table id="check-table">
										<tr>
											<th class="check-item-head">브랜드명</th>
											<td class="check-item-item-brand check-item-item">Jordan</td>
										</tr>
										
										<tr>
											<th class="check-item-head">상품명</th>
											<td class="check-item-item-title check-item-item">Jordan Air 123456</td>
										</tr>
										
										<tr>
											<th class="check-item-head">가격</th>
											<td class="check-item-item-price check-item-item">123,456,789 원</td>
										</tr>
										<tr>
											<th class="check-item-head">검수 요청일</th>
											<td class="check-item-item-request-checkdate check-item-item">2022-01-01</td>
										</tr>
										
										<tr>
											<th class="check-item-head">검수 완료일</th>
											<td class="check-item-item-finish-date check-item-item">2020-01-02</td>
										</tr>
										
										<tr>
											<th class="check-item-head">현재 상태</th>
											<td class="check-item-item-current-status check-item-item">검수 완료</td>
										</tr>
										
										<tr>
											<th class="check-item-head">판매자</th>
											<td class="check-item-item-seller check-item-item">박주연</td>
										</tr>
									</table>				
								</div>
								
								<div style="display:flex; align-items: center ">
									<div class="item-check-button-container">
										<button class="default-button button-negative" style="display:block"><a href="#">검수 이의제기</a></button>
										<button class="default-button button-positive" style="display:block"><a href="#">상품 정보</a></button>
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