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
					<h1>찜목록</h1>
					<div id="wishlist-wrap">
						<table id="wishlist-table">
							<thead id="wishlist-head">
								<th id="wishlist-head-n">#</th>
								<th id="wishlist-head-title">상품명</th>
								<th id="wishlist-head-seller">판매자</th>
							</thead>
							<tbody>
								<tr id="wishlist-item">
									<td class="wishlist-item-n">1</td>
									<td class="wishlist-item-title">21</td>
									<td class="wishlist-item-seller">111</td>
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