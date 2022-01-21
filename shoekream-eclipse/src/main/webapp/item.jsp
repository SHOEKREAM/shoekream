<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String iid = request.getParameter("item");

/*
	if(iid == null) 
	{
		%>
		<script>
			alert('잘못된 접근입니다');
			location.href='/';
		</script>
		<%
	}*/
	
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
		
		
		<script>
			window.onload = () => {
				$.ajax({
					url: 'item.do',
			        method: 'GET',
			        data: {
			        	'iid' : <%= iid %>
			        },
			        success : (response) => {		        	
		        			let data = response.data;
		        			
		        			$('#seller-notice').text(data.description);
		        			$('#item-wrap-info-title').text(data.title);
		        			$('#item-wrap-info-size').text(data.size);
		        			$('#item-wrap-info-price').text(data.price);
		        			$('#item-wrap-info-model').text(data.model);
		        			$('#item-wrap-info-release-date').text(data.release_date);
		        			$('#item-wrap-info-release-price').text(data.release_price);
		        			$('#item-wrap-info-color').text(data.color);
		        			$('#item-wrap-info-like-count').text(data.like_count);
		        			$('#item-wrap-info-cover').css({'background':'url('+data.cover+')'});
		        			$('#item-wrap-info-cover').css({'background-repeat':'no-repeat'});
		        			$('#item-wrap-info-cover').css({'background-position':'center'});
		        			$('#item-wrap-info-cover').css({'background-size':'cover'});
		        			
			        }	     
				});
			}
			
			function isValidateUser()
			{
				<%
				String user = (String)request.getSession().getAttribute("user");
				if(user != null)
				{
					%>
					return true;
					<%
				} else %> return false; <%
				
				%>
			}
			
			function callDibs()
			{
				if(!isValidateUser) location.href='/login';
				else {
					$.ajax({
						url: 'wishlist.do',
				        method: 'GET',
				        data: { 'iid' : <%= iid %>},
						success: (response) => {
							location.href='./wishlist';	
						}
					});
				}
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
					<div id="item-container">
					
						<h1>상품정보</h1>
						<div id="item-wrap" style="display: flex;">
					
							<div style="min-width: 560px">
								<div  id="item-wrap-info-cover" style="width: 100%; height: 500px; background-color: #F5F5F5l;"></div>
								<div style="display:grid; height:100px; grid-template-columns: 1fr 1fr 1fr 1fr 1fr; margin-top: 10px; gap: 16px; justify-content: stretch">
									<div class="item-wrap-item-thumb">1</div>
									<div class="item-wrap-item-thumb">2</div>
									<div class="item-wrap-item-thumb">3</div>
									<div class="item-wrap-item-thumb">4</div>
									<div class="item-wrap-item-thumb">5</div>
								</div>
								
								<div style="margin-top: 50px">
									<div><h2>판매자가 알려요</h2></div>
									<div id="seller-notice" style="background-color: #F5F5F5; margin-top: 20px; padding: 10px">
										
									</div>
								</div>
							</div>
							
							
							<div id="item-wrap-info">
								<div id="item-wrap-info-brand">Jordan 1</div>
								<h2 id="item-wrap-info-title"></h2>
								
								<table id="item-table">
									<tr>
										<th class="item-wrap-info-head">인증여부</th>
										<td class="item-wrap-info-item" id="item-wrap-info-certified">인증됨  <span class="material-icons">verified</span></td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">사이즈</th>
										<td class="item-wrap-info-item" id="item-wrap-info-size"></td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">가격</th>
										<td class="item-wrap-info-item" id="item-wrap-info-price"></td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">상품정보</th>
										<td>
										
											<tr>
												<th class="item-wrap-info-head">모델번호</th>
												<td id="item-wrap-info-model"></td>
											</tr>
											
											<tr>
												<th class="item-wrap-info-head">출시일</th>
												<td id="item-wrap-info-release-date"></td>
											</tr>
											
											<th class="item-wrap-info-head">발매가격</th>
												<td id="item-wrap-info-release-price"></td>
											</tr>
											
											<tr>
												<th class="item-wrap-info-head">컬러</th>
												<td id="item-wrap-info-color"></td>
											</tr>
											
										</td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">찜한 수</th>
										<td class="item-wrap-info-item" id="item-wrap-info-like-count"></td>
									</tr>
									</table>
								
								<div style="width:100%; margin:20px 0">
									<h4>구매 전 꼭 확인해 주세요</h4>
									<div style="width:100%; margin-top: 10px; padding-top: 10px" onclick="openPolicy()">
										검수안내
									</div>
									
									<div id="shoekream-policy" style="display: none; margin-top: 10px" >
									KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다.<br>
									거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br>
									<br>
									회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br>
									<br>
									※ 스니커즈 거래 관련 주의사항<br>
									KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서<br>
									제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.<br>
									<br>
									제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.
									단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)
									<br>
									* 제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br>
									* 도장, 마킹 등의 제조사 또는 판매처에서 진행되는 사항<br>
									* 검수 중 발생할 수 있는 사항 (속지, 슈트리 손상 등)<br>
									* 택배 개봉 또는 적재 및 상품 이동 중 발생할 수 있는 사항 (칼자국, 박스 눌림, 이염 등)<br>
									* 상품택, 구성품 등의 고리 누락/이탈<br>
									고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는<br>
									검수센터 책임자의 최종 판단 하에 결정하게 됩니다.<br>
									<br>
									KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.
									</div>
									
								</div>
								
								<div style="display: flex; justify-content: center; margin-top: 10px;">
									<button class="default-button button-positive" onclick="buyItem()">구입하기</button>
									<button class="default-button button-positive" onclick="callDibs()">찜하기</button>
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