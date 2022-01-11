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
	    <script src="js/jquery-3.6.0.js"></script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
			#adbutton1
			{
				height : 40px;
				width : 80px;
				background-color : #5ED1E9;
				font-size : 10pt;
				color : #FFFFFF;
				border: 0px;
				border-top-right-radius : 15px;
				border-top-left-radius : 15px;
				border-bottom-right-radius : 15px;
				border-bottom-left-radius : 15px;
			}
			#adbutton2
			{
				height : 40px;
				width : 80px;
				background-color : #E95E5E;
				font-size : 10pt;
				color : #FFFFFF;
				border: 0px;
				border-top-right-radius : 15px;
				border-top-left-radius : 15px;
				border-bottom-right-radius : 15px;
				border-bottom-left-radius : 15px;
			}
			#prline
			{
				border : 1px;
			}
			* 
			{
				background-color: #F7F7F7;
			}
			.btn 
				{
					color: white;
					width: 110px;
					height: 50px;
					display: inline-block;
					box-sizing: border-box;
					padding: 12px 0px;
					border-radius: 15px;
				}
		</style>
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
    
    <body>
    	<form name="admin" id="admin" method="post" action="noticeok.html">
			<table border="0" style="padding-top: 100px padding-bottom:20px;"
				width="1200px" align="center">
				<tr>
					<td align="center" style="font-size: 30pt;">문의 관리</td>
				</tr>
				<tr>
					<td style="padding-top: 30px; padding-left: 30px; font-size: 18pt;">문의 내용</td>
				</tr>
				<tr>
					<td>
						<table border="0" align="center" width="1100px">
							<tr>
								<td align="center" style="padding-top: 30px;">
								쇼룸 임시 휴무 관련 안내입니다.
								</td>
							</tr>
							<tr>
								<td align="center">2022-01-06</td>
							</tr>
							<tr>
								<td align="center">슈크림</td>
							</tr>
							<tr>
								<td width="700px" align="center"><hr></td>
							</tr>
							<tr>
								<td align="center" style="padding-top: 30px;">
									<text>
										상품 이미지 및 링크 도용시 강력 법적대응 조취합니다.<br>
										<br>
		
										고객님 들어오신 경로 통해서 다음 카페 모두 적발 가능합니다.<br>
										<br>
		
										중고나라로 이미지 도용해서 판매하시는 분들 또한 모두 경로 확인됩니다.<br>
										<br>
		
										2016.11.01 이후로 적발된 건들에 대해서는 모두 조취 취하도록 하겠습니다.<br>
										<br>
										<br>
									</text>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td style="padding-top: 30px; font-size: 18pt;">문의 답변</td>
				</tr>
				<tr>
					<td>
						<form name="adminqnaok" method="post" action="writeok.html">
							<table border="0" align="center" width="1100px"
								style="padding-bottom: 30px;">
								<tr>
									<td align="center" style="padding-top: 30px;">쇼룸 임시 휴무 관련 안내입니다.</td>
								</tr>
								<tr>
									<td align="center">2022-01-06</td>
								</tr>
								<tr>
									<td align="center">슈크림</td>
								</tr>
								<tr>
									<td width="700px" align="center"><hr></td>
								</tr>
								<tr>
									<td align="center" style="padding-top: 20px;">
									<textarea name="bnote" style="width: 600px; height: 200px;">
	안녕하십니까?
										
	슈크림 입니다.
										
	문의하신 '쇼룸 임시휴무'에 대한 안내입니다.
								
	감사합니다.										
									</textarea>
									<br><br><br>
									 	<a href="#" style="color: black; text-decoration: none">
										<span class="btn" style="background-color: #FF9595; width: 250px;">등록하기</span></a> 
										<a href="#" style="color: black; text-decoration: none"> 
										<span class="btn" style="background-color: #0078D7;">취소</span></a>
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
			</table>
		</form>
    </body>
</html>