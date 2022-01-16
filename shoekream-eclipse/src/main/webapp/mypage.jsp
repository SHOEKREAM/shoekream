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
       		
        </script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
        	/* table 
			{
				margin-left: auto;
				margin-right: auto;
			}
			
			h2
			{
				margin-left: auto;
				margin-right: auto;
				background-color: red;
			}
			
			input[type=text] 
			{
				border: 0px;
				border-bottom: #B0B0B0 2px solid;
			}
			input[type=password] 
			{
				border: 0px;
				border-bottom: #B0B0B0 2px solid;
			}
			
			input:focus 
			{
				outline: none;
			}
			
			td 
			{
				height: 50px;
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
			.shoe 
			{
				color: black;
				width: 110px;
				height: 50px;
				display: inline-block;
				box-sizing: border-box;
				padding: 12px 0px;
				border-radius: 15px;
			}		
			.size 
			{
				color: black;
				width: 50px;
				height: 50px;
				display: inline-block;
				box-sizing: border-box;
				padding: 12px 0px;
				border-radius: 15px;
			}
			#button
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
			#button2
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
			#box
			{
				border-top-right-radius : 10px;
				border-top-left-radius : 10px;
				border-bottom-right-radius : 10px;
				border-bottom-left-radius : 10px;
				display:float;
				background-color:#EFEFEF; 
				width:280px; 
				height:60px; 
				padding-top:12px;
			}
			#tr
			{
				border-bottom:1px solid #ADADAD; 
				padding-top:30px;
			}
			.mybutton
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
				
				color: white;
				width: 110px;
				height: 50px;
				display: inline-block;
				box-sizing: border-box;
				padding: 12px 0px;
				border-radius: 15px;
			}
			.mybutton2
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
				
				color: white;
				width: 110px;
				height: 50px;
				display: inline-block;
				box-sizing: border-box;
				padding: 12px 0px;
				border-radius: 15px;
			}
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
			#prbox
			{
				border-top-right-radius : 10px;
				border-top-left-radius : 10px;
				border-bottom-right-radius : 10px;
				border-bottom-left-radius : 10px;
				display:float;
				background-color:#EFEFEF; 
				width:280px; 
				height:60px; 
				padding-top:12px;
			}
			#prline
			{
				border : 1px;
			}
		
		
		.bg_content
		{
			display: none;
			position: fixed;
			left: 0px;
			top: 0px;
			width: 100%;
			height: 100%;
			background-color: black;
			opacity: 0.5;
			z-index: 100;			
		}
		
		.notice_content
		{
			display: none;
			position: fixed;
			left: 600px;
			top: 400px;
			width: 600px;
			height: 200px;
			background-color: white;
			z-index: 101;	
		}	    */ 
        </style>
		
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
					<h1>마이페이지</h1>
					
					<form method="post" action="#">
						<table id="mypage-table">
							<tr>
								<td id="mypage-head">이름</td>
								<td id="mypage-name">ㅁㅁ</td>
							</tr>
							
							<tr>
								<td id="mypage-head">비밀번호</td>
								<td id="mypage-password">
									<input type="password"  size="20" >
		                    		<input type="button" value="비밀번호 변경" onclick="showPopuppw();">
								</td>
							</tr>
							
							<tr>
								<td id="mypage-head">이메일</td>
								<td id="mypage-password">
									<input type="text"  size="20" >
				                    @
				                    <input type="text"  size="20" >
				                    <input type="button" value="이메일 변경" onclick="showPopupmail();">
								</td>
							</tr>
							
							<tr>					
			                    <td id="mypage-head">연락처</td>
			                    <td>
				                    <input type="text"  size="5" > - <input type="text"  size="5" > - <input type="text"  size="5" >
				                    <input type="button" value="연락처 변경" onclick="showPopuptel();">
		                    	</td>
		                	</tr>
			                <tr>
			                    <td id="mypage-head">주소</td>
			                    <td>
			                    	<div>
			                    		우편번호 <input type="text" size="10" id="postal" name="postal">
			                    		<input type="button" value="우편번호" onclick="findAddrss()"><br>
			                    	</div>
				                    
				                    기본주소 <input type="text" id="adress" name="adress" size="45" ><br>
				                    나머지주소 <input type="text" id="remainder" name="remainder" size="45" >						
			                    </td>
			                </tr>
			                <tr>
			                    <td id="mypage-head">가입일</td>
			                    <td>2022-01-04  D+10</td>
			                </tr>
			                
						</table>
						
						<div stly="display: flex; justify-content: center">
							<button class="default-button button-positive" onclick="applyMypage()">변경하기</button>	
							<button class="default-button button-negative" onclick="unregister();">회원탈퇴</button>						
						</div>
					</form>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>