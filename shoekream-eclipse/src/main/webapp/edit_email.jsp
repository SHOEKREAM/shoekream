<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	
		 <script language="javascript">
			function moveClose() 
			{
			  opener.location.href="mypage.jsp";
			  self.close();
			}	
		</script>	
	</head>
	
	<body>
		<table  border="1" align="center">
			<tr>				
			<td>이메일</td>
			<td>
				<input type="text"  size="20" > @ <input type="text"  size="20" >	
				<input type="button" value="인증하기" onclick="moveClose();">				
			</td>
			</tr>
			<tr>				
			<td colspan="2" align="center"><br>
				<input type="submit" value="변경완료" onclick="moveClose();">
			</td>
			</tr>
		</table>
	</body>
</html>