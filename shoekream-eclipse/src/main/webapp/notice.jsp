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
		<script src="./js/app.js"></script>
		<script>
			window.onload = function()
            {
				$.ajax({
					url: 'notice.do',
					method: 'GET',
					success: (response) => {
						
						let data = response.data;
						
						let tmp = $('#notice-body');
						let count = 1;
						for(item in data)
						{
							tmp.append('<tr id="notice-item" ><td class="notice-n">'+count+'</td>'
		                        +'<td class="notice-title" style="display:block; white-space:nowrap; overflow: hidden; text-overflow: ellipsis" onclick="unfoldNotice('+count+')">'
		                        +data[item].title+'<div id="notice-'+count+'" class="notice-wrap" style="height: 100%;  word-break:break-all">'
		                        +data[item].content+'</div></td>'
		                        +'<td class="notice-date">'+data[item].date+'</td></tr>');
							
							count++;
						}
						
						
						$(".notice-wrap").hide();
					}
					
				})
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
					<div id="support-container">
		                <div id="support-nav-container" >
		                    <div><a href="./notice"><h1>#공지사항</h1></a></div>
		                    <div><a href="./faq"><h1>#자주묻는질문</h1></a></div>
		                    <div><a href="./policy"><h1>#검수기준</h1></a></div>
		                    <div><a href="./help"><h1>#문의하기</h1></a></div>
		                </div>
		                <div id="support-container-content">
		                    <div id="container-content-header"><h2>공지사항</h2></div>
		    
		                    <div id="content-container">
		                        <table id="notice-table" style="table-layout: fixed" >
		                            <thead id="notice-head">
		                                <tr>
		                                    <th id="notice-head-n">#</th>
		                                    <th id="notice-head-title">제목</th>
		                                    <th id="notice-head-date">날짜</th>
		                                </tr>
		                            </thead>
		                            <tbody id="notice-body">
		                               
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