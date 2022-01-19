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
					<div id="item-container">
						<h1>상품정보</h1>
						<div id="item-wrap" style="display: flex;">
					
							<div style="min-width: 560px">
								<div style="width: 100%; height: 500px; background-color: #F5F5F5">
								이미지
								</div>
								<div style="display:grid; height:100px; grid-template-columns: 1fr 1fr 1fr 1fr 1fr; margin-top: 10px; gap: 16px; justify-content: stretch">
									<div class="item-wrap-item-thumb" style="background-color: #F5F5F5">1</div>
									<div class="item-wrap-item-thumb" style="background-color: #F5F5F5">2</div>
									<div class="item-wrap-item-thumb" style="background-color: #F5F5F5">3</div>
									<div class="item-wrap-item-thumb" style="background-color: #F5F5F5">4</div>
									<div class="item-wrap-item-thumb" style="background-color: #F5F5F5">5</div>
								</div>
								
								<div style="margin-top: 50px">
									<div><h2>판매자가 알려요</h2></div>
									<div style="background-color: #F5F5F5; margin-top: 20px; padding: 10px">
										옷 정리하다 입지 않는 옷 팝니다.<br>
										상태는 좋구요. 믿고 사세요
									</div>
								</div>
							</div>
							
							
							<div id="item-wrap-info">
								<div id="item-wrap-info-brand">Jordan 1</div>
								<div id="item-wrap-info-title"><h2>Jordan 1 Retro High OG Patent Bred</h2></div>
								<table id="item-table">
									<tr>
										<th class="item-wrap-info-head">인증여부</th>
										<td class="item-wrap-info-item">인증됨  <span class="material-icons">verified</span></td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">사이즈</th>
										<td class="item-wrap-info-item">270</td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">가격</th>
										<td class="item-wrap-info-item">2,000,000 원</td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">상품정보</th>
										<td>
										
											<tr>
												<th class="item-wrap-info-head">모델번호</th>
												<td>112264-123</td>
											</tr>
											
											<tr>
												<th class="item-wrap-info-head">출시일</th>
												<td>2022-01-05</td>
											</tr>
											
											<th class="item-wrap-info-head">발매가격</th>
												<td>1,000,000</td>
											</tr>
											
											<tr>
												<th class="item-wrap-info-head">컬러</th>
												<td>BLACK</td>
											</tr>
											
										</td>
									</tr>
									
									<tr>
										<th class="item-wrap-info-head">찜한 수</th>
										<td class="item-wrap-info-item">1,100회</td>
									</tr>
								</table>
								
								<div style="width:100%; margin-top: 20px">
									<h4>구매 전 꼭 확인해 주세요</h4>
									<div style="width:100%; margin-top: 10px; padding-top: 10px" onclick="openPolicy()">
										검수안내
									</div>
									
									<div id="shoekream-policy" style="display: none" >
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
									<button class="default-button button-positive" onclick="callDibs()">구입하기</button>
									<button class="default-button button-positive" onclick="buyItem()">찜하기</button>
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