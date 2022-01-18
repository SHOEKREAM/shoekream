<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
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
				<div id="support-container">
	                <div id="support-nav-container" >
	                    <div><a href="./notice"><h1>#공지사항</h1></a></div>
	                    <div><a href="./faq"><h1>#자주묻는질문</h1></a></div>
	                    <div><a href="./policy"><h1>#검수기준</h1></a></div>
	                    <div><a href="./help"><h1>#문의하기</h1></a></div>
	                </div>
	                
	                <div id="support-container-content">
	                    <div id="container-content-header"><h2>검수기준</h2></div>
						<div>
							<p><b>[업데이트] 2021/11/29 월</b></p>
							<p><b>[적용일시] 2021/12/03 금 00:00 체결 건 부터</b>
							</p>
							<p>
								<span>KREAM</span>의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다.<br>
								거래에 앞서 최신 검수기준을 참고하시기 바랍니다.
							</p>
							<p>
								회원님께서 판매 또는 구매하신 모든 상품은 <span>KREAM</span>의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.
							</p>
							<p style="color: #f15746;">
							※ 스니커즈 거래 관련 주의사항<br> KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서<br>
							제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.<br><br>
							제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.<br>단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)
							</p>
							<ul style="color: #999999;">
			                    <li>제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항</li>
			                    <li>도장, 마킹 등의 제조사 또는 판매처에서 진행되는 사항</li>
			                    <li>검수 중 발생할 수 있는 사항 (속지, 슈트리 손상 등)</li>
			                    <li>택배 개봉 또는 적재 및 상품 이동 중 발생할 수 있는 사항 (칼자국, 박스 눌림, 이염 등)</li>
			                    <li>상품택, 구성품 등의 고리 누락/이탈</li>
			                </ul>
			                <p>
								고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는<br>
								<b>검수센터 책임자의 최종 판단 하에 결정하게 됩니다.</b>
							</p>
							<p>
								KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.
			                </p>
						</div>
                    </div>
                </div>

				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
    </body>
</html>