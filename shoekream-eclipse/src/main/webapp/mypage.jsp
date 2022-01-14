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
       		function memberRetire()
		 	{
		 		$(".bg_content").show();
		 		$(".notice_content").show();
		 				 		
		 	}
		 	
		 	function myclose() 
  			{ 		 		 
		 		$(".bg_content").hide();
		 		$(".notice_content").hide();		         
  			}
		 	
  			function showPopuppw() 
  			{ window.open("password.jsp", "비밀번호변경", "width=500, height=300, left=100, top=50"); }
  			
  			function showPopupmail() 
  			{ window.open("email.jsp", "이메일변경", "width=500, height=300, left=100, top=50"); }
  			
  			function showPopuptel() 
  			{ window.open("tel.jsp", "전화번호변경", "width=500, height=300, left=100, top=50"); }
 
  			function findAddr(){
  				new daum.Postcode({
  			        oncomplete: function(data) 
  			        {  			        	
  			        	console.log(data);  			        	
  			            var roadAddr = data.roadAddress; // 도로명 주소 변수
  			            var jibunAddr = data.jibunAddress; // 지번 주소 변수
  			            // 우편번호와 주소 정보를 해당 필드에 넣는다.
  			            document.getElementById('postal').value = data.zonecode;
  			            if(roadAddr !== ''){
  			                document.getElementById("adress").value = roadAddr;
  			            }else if(jibunAddr !== ''){
  			                document.getElementById("adress").value = jibunAddr;
  			            }
  			        }
  			    }).open();
  			}  	
        </script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
        	table 
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
		}	    
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
					<form name="mypage" id="mypage" method="post" action="mypage.html">			
            
            <table border="1" align="center" width="1200px" height="500px">
                <tr align="center">
                    <td colspan="3">마이페이지</td>
                </tr>
                <tr>												
                    <td>이름</td>
                    <td>슈크림</td>
                </tr>
                <tr>			
                    <td>비밀번호</td>
                    <td>
                    <input type="password"  size="20" >
                    <input type="button" value="비밀번호 변경" onclick="showPopuppw();">
                    </td>
                </tr>
                <tr>				
                    <td>이메일</td>
                    <td>
                    <input type="text"  size="20" >
                    @
                    <input type="text"  size="20" >
                    <input type="button" value="이메일 변경" onclick="showPopupmail();">
                    </td>
                </tr>
                <tr>					
                    <td>연락처</td>
                    <td>
                    <input type="text"  size="5" >
                    -
                    <input type="text"  size="5" >
                    -
                    <input type="text"  size="5" >
                    <input type="button" value="연락처 변경" onclick="showPopuptel();">
                    </td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td>우편번호 <input type="text"  size="10" id="postal" name="postal" >
                    <input type="button"    value="우편번호" onclick="findAddr()"><br>
                    기본주소 <input type="text"  id="adress" name="adress" size="45" ><br>
                    나머지주소 <input type="text"  id="remainder" name="remainder" size="45" >						
                    </td>
                </tr>
                <tr>
                    <td>가입일</td>
                    <td>
                        2022-01-04  D+10
                    </td>
                </tr>
                <tr align="center">					
                    <td rowspan="2" colspan="3" align="center">
                        <div style="display:inline; height:70px;padding-left:20px;">
                        <input class="mybutton" type="button" value="변경완료" onclick="">						
                        </div>
                        <div style="display:inline; height:70px;padding-left:20px;">
                        <input class="mybutton2"  type="button" value="회원탈퇴" onclick="memberRetire();">						
                        </div>
                    </td>
                </tr>
            </table>
        </form>	
        <div class="bg_content" id="bg_content">
        </div>
        <div class="notice_content" id="notice_content" align="center">
            <br><br>알립니다.<br><br>
            회원탈퇴를 할 경우, 모든 정보가 삭제됩니다.<br><br>
            <input id="close" class="mybutton"  type="button" value="예" onclick="myclose();">
            <input id="close" class="mybutton2" type="button" value="아니오" onclick="myclose();">		
        </div>	
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>