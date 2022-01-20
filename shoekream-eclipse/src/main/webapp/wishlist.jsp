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
					<h1>찜목록</h1>
					<div id="wishlist-wrap">
						<table id="wishlist-table">
							<thead id="wishlist-head">
								<th id="wishlist-head-n">#</th>
								<th id="wishlist-head-title">상품명</th>
				                <th id="wishlist-head-size">사이즈</th>
				                <th id="wishlist-head-price">가격</th>
				                <th id="wishlist-head-seller">판매자</th>
				                <th id="wishlist-head-buttton">버튼</th>
							</thead>
							<tbody id="wishlist-body">
								<tr id="wishlist-item-1" class="wishlist-item">
									<td class="wishlist-item-n">1</td>
									<td class="wishlist-item-info">
					                    <div class="wishlist-item-info-cover"></div>               
					                    <div class="wishlist-item-info-title" style="background-image:url('/img/jordan-1-retro.png'); background-color:white;">상품명<span class="material-icons" style="padding-left: 10px;">verified</span></div>
				                  </td>
				                  <td class="wishlist-item-size" >111</td>
				                  <td class="wishlist-item-price" >111</td>
								  <td class="wishlist-item-seller">111</td>
					              <td class="wishlist-item-button" onclick="removeWishlistItem(1)"><button>삭제</button></td>
								</tr>
					
				                <tr id="wishlist-item-2" class="wishlist-item">
									<td class="wishlist-item-n">2</td>
									<td class="wishlist-item-info">
					                    <div class="wishlist-item-info-cover"></div>               
					                    <div class="wishlist-item-info-title">상품명<span class="material-icons" style="padding-left: 10px;">verified</span></div>
					                </td>
			                  		<td class="wishlist-item-size" >111</td>
				                  	<td class="wishlist-item-price" >111</td>
									<td class="wishlist-item-seller">111</td>
				                  	<td class="wishlist-item-button" onclick="removeWishlistItem(2)"><button>삭제</button></td>
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