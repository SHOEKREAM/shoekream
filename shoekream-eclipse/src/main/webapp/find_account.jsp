<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<style>
			<style>
			input[type=text]
			{
				border: 0px;
				border-bottom: #B0B0B0 1px solid;
				width: 330px;
			}
			input:focus
			{
				outline: none;
			}
			td
			{
				height: 70px;
			}
			div
			{
				border: #999999 1px solid;
				width:150px;
				height:50px;
				text-align:center;
				padding-top: 25px;
			}
			.btn
			{
				color:white;
				width:330px;
				height:60px;
				background-color:#FF9595;
				text-align:center;
				display:table-cell;
				vertical-align:middle;
			}
		</style>	
		</style>
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
    
    <body>
    	<table border="0" width="340px" align="center">
			<tr>
				<td>
					<div style="float:left;">아이디 찾기</div>
					<div style="float:right; border:#A1D7FF 1px solid;">비밀번호 찾기</div>
				</td>
			</tr>
			<tr>
				<td>아이디</td>
			</tr>
			<tr>
				<td><input type="text" style="font-size:20px;"></td>
			</tr>
			<tr>
				<td>이메일 주소</td>
			</tr>
			<tr>
				<td><input type="text" style="font-size:20px;"></td>
			</tr>
			<tr>
				<td style="text-align:center; font-size:20px;" colspan="2">
					<a href="#" style="color:black; text-decoration:none">
						<span class="btn" style="background-color: #FF9595; width:150px;">계정 찾기</span>
					</a>
					<a href="#" style="color:black; text-decoration:none">
						<span class="btn" style="background-color: #0078D7; width:100px;">취소</span>
					</a>
				</td>
			</tr>
		</table>
    </body>
</html>