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
		<form name="tel" id="tel" method="post" action="mypage.jsp">
			<table border="1" align="center" width="900px">
				<tr>					
					<td>연락처</td>
					<td>
					<input type="text"  size="5" >-<input type="text"  size="5" >-<input type="text"  size="5" >					
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