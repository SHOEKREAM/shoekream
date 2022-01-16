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
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="./js/jquery-3.6.0js"></script>
		<script>
		    function sample6_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수
		
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("sample6_extraAddress").value = extraAddr;
		                
		                } else {
		                    document.getElementById("sample6_extraAddress").value = '';
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('sample6_postcode').value = data.zonecode;
		                document.getElementById("sample6_address").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("sample6_detailAddress").focus();
		            }
		        }).open();
		    }
		</script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
			
			td
			{
				height: 50px;
			}
			.btn
			{
				color:white;
				width:110px;
				height:50px;
				display:inline-block;
				box-sizing:border-box;
				padding:12px 0px;
				border-radius: 15px;
			}
		</style>
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
    
    <body>
    	<table border="0" width="500px" align="center">
			<tr>
				<td style="font-size:48px; height:150px;" colspan="2"><b>회원가입 하기</b></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>이름</td>
			</tr>
			<tr>
				<td><input type="text" style="font-size:20px;"></td>
				<td><input type="text" style="font-size:20px;"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>비밀번호 확인</td>
			</tr>
			<tr>
				<td><input type="password" style="font-size:20px;"></td>
				<td><input type="password" style="font-size:20px;"></td>
			</tr>
			<tr>
				<td colspan="2">전화번호</td>
			<tr>
			<tr>
				<td colspan="2">
					<select>
						<option>010</option>
						<option>011</option>
						<option>017</option>
						<option>018</option>
					</select>
					&nbsp;&nbsp;-
					<input type="text" style="font-size:20px; width:80px;">
					&nbsp;&nbsp;-&nbsp;&nbsp;
					<input type="text" style="font-size:20px; width:80px;">
				</td>
			<tr>
			<tr>
				<td colspan="2">이메일</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="text" style="font-size:20px; width:170px;">@
					<input type="text" style="font-size:20px; width:170px;">
					<select>
						<option>직접 입력</option>
						<option>naver.com</option>
						<option>hanmail.net</option>
						<option>gmail.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">주소</td>
			</tr>
			<tr>
				<td colspan="2" style="height:150px;">
					<input type="text" id="sample6_postcode" placeholder="우편번호" style="height:50px; font-size:15px;">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" placeholder="주소" style="height:50px; font-size:15px;"><br>
					<input type="text" id="sample6_detailAddress" placeholder="상세주소" style="height:50px; font-size:15px;">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목" style="height:50px; font-size:15px; width:260px;">
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center; height:100px;">
					<input type="checkbox"><b style="color:#728CF3;">이용약관</b> 과 <b style="color:#E78E67;">개인정보 제공</b>에 동의합니다.
				</td>
			</tr>
			<tr>
				<td style="text-align:center; font-size:20px;" colspan="2">
					<a href="#" style="color:black; text-decoration:none">
						<span class="btn" style="background-color: #FF9595; width:250px;">회원가입</span>
					</a>
					<a href="#" style="color:black; text-decoration:none">
						<span class="btn" style="background-color: #0078D7;">취소</span>
					</a>
				</td>
			</tr>
		</table>
    </body>
</html>