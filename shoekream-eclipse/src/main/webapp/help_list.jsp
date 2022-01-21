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
		                    <div><a href="./help_list"><h1>#문의목록</h1></a></div>
		                </div>
              			<div id="help-container-content">
			                <h1>문의목록</h1>
							<div id="help-list-wrap">
								<table id="help-list-table" style="margin-top:50px">				
									<thead>
										<th id="help-list-head-n">#</th>
										<th id="help-list-head-category">문의구분</th>
										<th id="help-list-head-title">문의명</th>
										<th id="help-list-head-date">문의일자</th>
										<th id="help-list-head-isreplay">답변여부</th>
									</thead>
									
									<tbody>
										<tr>			
											<td class="help-list-item-n">1</td>
											<td class="help-list-item-category">상품문의</td>
											<td class="help-list-item-title">이거 찐인가요?</td>
											<td class="help-list-item-date">2022/01/21</td>
											<td class="help-list-item-isreplay">아니요</td>
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