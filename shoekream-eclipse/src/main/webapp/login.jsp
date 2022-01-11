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
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
			input[type=text], input[type=password]
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
				height: 50px;
			}
			.loginBtn
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
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
    
    <body>
    	<table border="0" width="340px" align="center">
			<tr>
				<td style="font-size:48px; height:150px;"><b>로그인 하기</b></td>
			</tr>
			<tr>
				<td>아이디</td>
			</tr>
			<tr>
				<td><input type="text" style="font-size:20px;"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
			</tr>
			<tr>
				<td><input type="password" style="font-size:20px;"></td>
			</tr>
			<tr>
				<td><input type="checkbox">아이디 저장</td>
			</tr>
			<tr>
				<td>
					<a href="#" style="text-decoration:none"><div class="loginBtn">로그인</div></a>
				</td>
			</tr>
			<tr>
				<td style="text-align:center; font-size:20px;">
					<a href="join.html" style="color:black; text-decoration:none">회원가입</a>
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
					<a href="accountfind.html" style="color:black; text-decoration:none"><b>아이디</b> 또는 <b>비밀번호</b>가 생각나지 않아요</a>
				</td>
			</tr>
		</table>
    </body>
</html>