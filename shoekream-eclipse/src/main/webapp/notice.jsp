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
                $(".notice-wrap").hide();
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
					<div id="support-container" style="display: flex">
                <div id="support-nav-container" >
                    <div><a href="./notice.jsp"><h1>#공지사항</h1></a></div>
                    <div><a href="./faq.jsp"><h1>#자주묻는질문</h1></a></div>
                    <div><a href="./policy.jsp"><h1>#검수기준</h1></a></div>
                    <div><a href="./inquire.jsp"><h1>#문의하기</h1></a></div>
                </div>
                <div id="support-container-content" style=" width:100%">
                    <div id="container-content-header"><h2>공지사항</h2></div>
    
                    <div id="content-container">
                        <table id="notice-table" >
                            <thead id="notice-head">
                                <tr>
                                    <th id="notice-head-n">#</th>
                                    <th id="notice-head-title">제목</th>
                                    <th id="notice-head-date">날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr id="notice-item" >
                                    <td class="notice-n">1</td>
                                    <td class="notice-title" onclick="unfoldNotice(1)">
                                        aa
                                    	<div id="notice-1" class="notice-wrap">
                                    	    sss
                                    	</div>
                                    </td>
                                    <td class="notice-date">2022/01/16</td>
                                </tr>

                                <tr id="notice-item">
                                    <td class="notice-n">1</td>
                                    <td class="notice-title" onclick="unfoldNotice(2)">
                                        aa
                                    	<div id="notice-2" class="notice-wrap">
                                    	    sss
                                    	</div>
                                    </td>
                                    <td class="notice-date">2022/01/16</td>
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