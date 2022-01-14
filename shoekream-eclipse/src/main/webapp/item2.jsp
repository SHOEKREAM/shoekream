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
					<table border="1" align="center" width="1200px">
						<tr>
							<td align="left">
								<a href="#"><img style="width: 200px; height:70px;" src="https://littledeep.com/wp-content/uploads/2020/06/converse_logo_thumbnail.png"></a> 
							</td>
							<td align="right">
							</td>
						</tr>
						<tr>
							<td colspan="2" width="200px" height="100px" align="center">
							<    한정판 이미지    >			
							</td>
						</tr>
					</table>
					<table border="1"id="prline" align="center" width="1200px">
						<tr >
							<td rowspan="5" width="500px">
								<img style="width: 600px; height:400px;" src="http://img4.tmon.kr/cdn4/deals/2021/10/21/2113358054/front_5cd75_kverv.jpg">	
							</td>
							<td colspan="2" align="center" height="100px">
								Autry Medalist Low Leather Sneakers White
							</td>
						</tr>
						<tr>
							<td width="100px" height="70px" >
								인증여부
							</td>
							<td>
								<img style="width: 70px; height:70px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeXwksuhbviNsHcAUVf4Ac7wFF0NPC65tfkg&usqp=CAU">
							</td>				
						</tr>
						<tr>
							<td width="100px" height="100px">
								상품정보
							</td >
							<td >
								<div style="display:inline-block; padding-left:10px;">
								모델번호 112264-123<br>
								출시일 2022-01-05<br>  
								</div>
								<div style="display:inline-block; padding-left:50px;">
								 발매가격 1,000,000 원<br>
								 컬러 BLACK<br> 
								</div>
							</td>				
						</tr>
						<tr>
							<td>
							 	사이즈
							</td>
							<td>
								245 
							</td>
						</tr>
						<tr>
							<td>
								상품상태
							</td>
							<td>
								상품 상태  A급
							</td>
						</tr>
						<tr>
							<td rowspan="3" width="500px" height="150px" align="center">
								<서브이미지>
							</td>
							<td height="50px">
								사이즈
							</td>
							<td>
								245
							</td>
						</tr>	
						<tr>
							<td height="50px">
								가격 
							</td>
							<td colspan="2" >
								1,200,000 원
							</td>
						</tr>
						<tr height="40px">
							<td  rowspan="2" colspan="2" align="center">
							<div style="display:inline; height:70px;padding-left:20px;">
							<input id="prbutton" type="button" value="구매하기" onclick="">						
							</div>
							<div style="display:inline; height:70px;padding-left:20px;">
							<input id="prbutton2" type="button" value="찜하기 ♡" onclick="">						
							</div>
							</td>				
						</tr>
						<tr height="40px" >
							<td align="center">
								판매자 정보 ★★★★☆
							</td>				
						</tr>	
						<tr>
							<td align="center">
								판매자가 알려요!
							</td> 
							<td colspan="2" align="center">
								구매전 꼭 확인해주세요!
							</td>
						</tr>
						<tr>
							<td align="center" rowspan="2" > <div id="prbox">
								옷 정리하다가 안입는 옷 팝니다.<br>
								상태는 좋구요 믿고 사세요!</div>
							</td>
							<td colspan="2"><div id="toc-toggle" style="height:30px; align:center; padding-top:10px; border-top: 1px solid #ADADAD; border-bottom:1px solid #ADADAD;" width="400px" align="center"  onclick="openCloseToc()">검수안내 ▼</div></td>
						</tr>
						<tr >				
							<td colspan="2" ><div id="toc-content" colspan="2" align="center" Style="display:none;">				
								검수 안내입니다.<br>
								꼭 읽어주세요!
							</div></td>
						</tr>
					</table>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>