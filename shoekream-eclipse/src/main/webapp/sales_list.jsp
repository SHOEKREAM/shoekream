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
					<h1>판매내역</h1>
					<div id="sales-list-wrap">
						<table id="sales-list-table">				
							<thead>
								<th id="sales-list-head-n">#</th>
								<th id="sales-list-head-title">상품명</th>
								<th id="sales-list-head-size">사이즈</th>
								<th id="sales-list-head-price">가격</th>
								<th id="sales-list-head-seller">구매자</th>
								<th id="sales-list-head-buydate">구매일</th>
							</thead>
							
							<tbody>
								<tr>			
									<td class="sales-list-item-n">1</td>
									<td class="sales-list-item-title"><a href="#">나이키</a></td>
									<td class="sales-list-item-size">230</td>
									<td class="sales-list-item-price">12,000,000</td>
									<td class="sales-list-item-seller">홍길동</td>
									<td class="sales-list-item-buydate">2022-01-04</td>
								</tr>
								
								<tr>			
									<td class="sales-list-item-n">1</td>
									<td class="sales-list-item-title"><a href="#">나이키</a></td>
									<td class="sales-list-item-size">230</td>
									<td class="sales-list-item-price">12,000,000</td>
									<td class="sales-list-item-seller">홍길동</td>
									<td class="sales-list-item-buydate">2022-01-04</td>
								</tr>
							</tbody>
						</table>	
					</div>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>