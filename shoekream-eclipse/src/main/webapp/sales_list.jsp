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
		<script>
			function openCloseToc() 
			{
			    if(document.getElementById('toc-content').style.display === 'block') 
			    {
			      document.getElementById('toc-content').style.display = 'none';
			      document.getElementById('toc-toggle').textContent = '검수안내▼';
			    } else 
			    {
			      document.getElementById('toc-content').style.display = 'block';
			      document.getElementById('toc-toggle').textContent = '검수안내▼';
			    }
			  }
		</script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
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
			#mybutton
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
			#mybox
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
			#prbutton
			{
				height : 75px;
				width : 250px;
				background-color : #5ED1E9;
				font-size : 15pt;
				color : #FFFFFF;
				border: 0px;
				border-top-right-radius : 15px;
				border-top-left-radius : 15px;
				border-bottom-right-radius : 15px;
				border-bottom-left-radius : 15px;
			}
			#prbutton2
			{
				height : 75px;
				width : 250px;
				background-color : #E95E5E;
				font-size : 15pt;
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
					<table border="1" align="center" width="900px">				
						<tr align="center">
							<td colspan="7" align="center">판매 내역</td>
						</tr>						
							<td>번호</td>
							<td>상품명</td>
							<td>사이즈</td>
							<td>가격</td>
							<td>구매자</td>
							<td>구매일</td>
						</tr>
						<tr>			
							<td>1</td>
							<td><a href="#">나이키</a></td>
							<td>230</td>
							<td>12,000,000</td>
							<td>홍길동</td>
							<td>2022-01-04</td>
						</tr>
						<tr>			
							<td>2</td>
							<td><a href="#">나이키</a></td>
							<td>230</td>
							<td>12,000,000</td>
							<td>홍길동</td>
							<td>2022-01-04</td>
						</tr>
						<tr>			
							<td>3</td>
							<td><a href="#">나이키</a></td>
							<td>230</td>
							<td>12,000,000</td>
							<td>홍길동</td>
							<td>2022-01-04</td>
						</tr>
						<tr>			
							<td>4</td>
							<td><a href="#">나이키</a></td>
							<td>230</td>
							<td>12,000,000</td>
							<td>홍길동</td>
							<td>2022-01-04</td>
						</tr>
					</table>	
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>