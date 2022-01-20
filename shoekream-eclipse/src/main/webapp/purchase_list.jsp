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
		                    <div><a href="./mypage"><h1>#정보수정</h1></a></div>
		                    <div><a href="./purchase_list"><h1>#구매내역</h1></a></div>
		                    <div><a href="./sales_list"><h1>#판매내역</h1></a></div>
		                    <div><a href="./help"><h1>#문의목록</h1></a></div>
		                </div>
              			<div id="support-container-content">
			                <h1>구매내역</h1>
							<div id="purchase-list-wrap">
								<table id="purchase-list-table">				
									<thead>
										<th id="purchase-list-head-n">#</th>
										<th id="purchase-list-head-title">상품명</th>
										<th id="purchase-list-head-size">사이즈</th>
										<th id="purchase-list-head-price">가격</th>
										<th id="purchase-list-head-seller">판매자</th>
										<th id="purchase-list-head-buydate">구매일</th>
									</thead>
									
									<tbody>
										<tr>			
											<td class="purchase-list-item-n">1</td>
											<td class="purchase-list-item-title"><a href="#">나이키</a></td>
											<td class="purchase-list-item-size">230</td>
											<td class="purchase-list-item-price">12,000,000</td>
											<td class="purchase-list-item-seller">홍길동</td>
											<td class="purchase-list-item-buydate">2022-01-04</td>
										</tr>
										
										<tr>			
											<td class="purchase-list-item-n">2</td>
											<td class="purchase-list-item-title"><a href="#">나이키</a></td>
											<td class="purchase-list-item-size">230</td>
											<td class="purchase-list-item-price">12,000,000</td>
											<td class="purchase-list-item-seller">홍길동</td>
											<td class="purchase-list-item-buydate">2022-01-04</td>
										</tr>
									</tbody>
								</table>	
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