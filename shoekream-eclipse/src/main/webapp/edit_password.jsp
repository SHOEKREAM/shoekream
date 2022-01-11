<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	
		 <script language="javascript">
			<script language="javascript">
			function moveClose() 
			{
			  opener.location.href="mypage.html";
			  self.close();
			}
		</script>	
	</head>
	
	<body>
		<form name="password" id="password" method="post" action="mypage.jsp">
			<table  border="1" align="center">
				<tr>
					<td>
						현재 비밀번호
					</td>
					<td>
						<input type="password" size="15">
					</td>
				</tr>
				<tr>
					<td>
						새 비밀번호
					</td>
					<td>
						<input type="password" size="15" name="pw" value="">
					</td>
				</tr>	
				<tr>
					<td>
						비밀번호 확인
					</td>
					<td>
						<input type="password" size="15" value="">
					</td>
				</tr>	
				<tr>				
					<td colspan="2">
					<br>
						<input type="submit" value="변경완료" onclick="moveClose();">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>