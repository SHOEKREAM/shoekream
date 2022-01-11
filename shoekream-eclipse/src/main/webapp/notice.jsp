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
		<script src="./js/jquery-3.6.0.js"></script>
		<script>
			window.onload = function()
			{
				$(".notice_wrap").hide();
			}
			function ShowNotice(id)
			{
				$("#notice"+id).toggle();
			}
			/*
			선생님이 알려주신 방식			
			var old_obj = null; 
			
			function ShowNotice(obj)
			{
				if( old_obj != null)
				{
					$(old_obj).parent().parent().next().hide();
				}
				$(obj).parent().parent().next().show();
				old_obj = obj;
			}
			*/
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
						<h2>공지사항</h2>
						<tr><td style="border-bottom:1px solid; height:1px;" colspan="3"></td></tr>
						<tr>						
							<td style="width:50px; height:50px;">1</td>
							<td><a href="javascript:ShowNotice(1);">안녕하세요. 슈크림입니다.</a></td>
							<td style="width:100px;">2022-01-01</td>
						</tr>
						<tr id="notice1" class="notice_wrap">
							<td></td>
							<td colspan="2">
								오늘도 좋은 하루 되세요.
							</td>
						</tr>
						<tr>						
							<td style="width:50px; height:50px;">2</td>
							<td><a href="javascript:ShowNotice(2);">공지사항입니다</a></td>
							<td style="width:100px;">2022-01-01</td>
						</tr>
						<tr id="notice2" class="notice_wrap">
							<td></td>
							<td colspan="2">
								법원이 학원과 독서실, 스터디카페에 '방역패스'를 적용한 정부 방침의 효력을 1심 선고 때까지 정지하라고 결정했다.
								서울행정법원 행정8부(부장 이종환)는 4일 함께하는사교육연합 등이 보건복지부장관을 상대로 낸 특별방역대책 후속조치 처분 집행정지 신청을 일부 인용했다. 재판부는 "복지부 장관이 지난달 3일 △학원 △독서실 △스터디카페를 방역패스 의무적용 시설로 포함시킨 부분을 행정소송 본안사건 1심 판결이 선고될 때까지 그 효력을 정지한다"고 밝혔다.
								단체는 지난달 17일 "방역패스 정책은 청소년 백신접종을 사실상 의무화해 청소년의 신체 자유, 일반적 행동 자유권, 학습권, 학원장의 영업권 등을 침해한다"며 행정소송을 제기하면서 집행정지도 신청했다.
							</td>
						</tr>
						<tr>						
							<td style="width:50px; height:50px;">3</td>
							<td><a href="javascript:ShowNotice(3);">공지사항입니까</a></td>
							<td style="width:100px;">2022-01-01</td>
						</tr>
						<tr id="notice3" class="notice_wrap">
							<td></td>
							<td colspan="2">
								법원이 학원과 독서실, 스터디카페에 '방역패스'를 적용한 정부 방침의 효력을 1심 선고 때까지 정지하라고 결정했다.
								서울행정법원 행정8부(부장 이종환)는 4일 함께하는사교육연합 등이 보건복지부장관을 상대로 낸 특별방역대책 후속조치 처분 집행정지 신청을 일부 인용했다. 재판부는 "복지부 장관이 지난달 3일 △학원 △독서실 △스터디카페를 방역패스 의무적용 시설로 포함시킨 부분을 행정소송 본안사건 1심 판결이 선고될 때까지 그 효력을 정지한다"고 밝혔다.
								단체는 지난달 17일 "방역패스 정책은 청소년 백신접종을 사실상 의무화해 청소년의 신체 자유, 일반적 행동 자유권, 학습권, 학원장의 영업권 등을 침해한다"며 행정소송을 제기하면서 집행정지도 신청했다.
							</td>
						</tr>
						<tr>						
							<td style="width:50px; height:50px;">4</td>
							<td><a href="javascript:ShowNotice(4);">공지사항일수도</a></td>
							<td style="width:100px;">2022-01-01</td>
						</tr>
						<tr id="notice4" class="notice_wrap">
							<td></td>
							<td colspan="2">
								법원이 학원과 독서실, 스터디카페에 '방역패스'를 적용한 정부 방침의 효력을 1심 선고 때까지 정지하라고 결정했다.
								서울행정법원 행정8부(부장 이종환)는 4일 함께하는사교육연합 등이 보건복지부장관을 상대로 낸 특별방역대책 후속조치 처분 집행정지 신청을 일부 인용했다. 재판부는 "복지부 장관이 지난달 3일 △학원 △독서실 △스터디카페를 방역패스 의무적용 시설로 포함시킨 부분을 행정소송 본안사건 1심 판결이 선고될 때까지 그 효력을 정지한다"고 밝혔다.
								단체는 지난달 17일 "방역패스 정책은 청소년 백신접종을 사실상 의무화해 청소년의 신체 자유, 일반적 행동 자유권, 학습권, 학원장의 영업권 등을 침해한다"며 행정소송을 제기하면서 집행정지도 신청했다.
							</td>
						</tr>
						<tr>						
							<td style="width:50px; height:50px;">5</td>
							<td><a href="javascript:ShowNotice(5);">공지사항아닙니다</a></td>
							<td style="width:100px;">2022-01-01</td>
						</tr>
						<tr id="notice5" class="notice_wrap">
							<td></td>
							<td colspan="2">
								법원이 학원과 독서실, 스터디카페에 '방역패스'를 적용한 정부 방침의 효력을 1심 선고 때까지 정지하라고 결정했다.
								서울행정법원 행정8부(부장 이종환)는 4일 함께하는사교육연합 등이 보건복지부장관을 상대로 낸 특별방역대책 후속조치 처분 집행정지 신청을 일부 인용했다. 재판부는 "복지부 장관이 지난달 3일 △학원 △독서실 △스터디카페를 방역패스 의무적용 시설로 포함시킨 부분을 행정소송 본안사건 1심 판결이 선고될 때까지 그 효력을 정지한다"고 밝혔다.
								단체는 지난달 17일 "방역패스 정책은 청소년 백신접종을 사실상 의무화해 청소년의 신체 자유, 일반적 행동 자유권, 학습권, 학원장의 영업권 등을 침해한다"며 행정소송을 제기하면서 집행정지도 신청했다.
							</td>
						</tr>
					</table>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>