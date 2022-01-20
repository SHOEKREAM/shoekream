<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("user") != null) 
    {
    %>
    <script>
        location.href='/'
    </script>
    <%
    }
%>

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
		<script src="./js/jquery-3.6.0.js"></script>
		<script>
		    //function sample6_execDaumPostcode() {
		    function showDaumPostcode() 
		    {
		        new daum.Postcode(
		        {
		            oncomplete: (data) => 
		            {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                let addr = ''; // 주소 변수
		                let extraAddr = ''; // 참고항목 변수
		
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
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)) extraAddr += data.bname;
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== '') extraAddr = ' (' + extraAddr + ')';
		                 
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("signup-address").value = extraAddr;
		                } else  document.getElementById("signup-address").value = '';
		                		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('signup-address-postnumber').value = data.zonecode;
		                document.getElementById("signup-address").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("signup-address-detail").focus();
		            }
		        }).open();
		    }
		</script>
		
		<script>
			function signup() 
			{
				let name = $('#signup-name').val();
	
				let id = $('#signup-id').val();
				let pw = $('#signup-pw').val();
				let pw2 = $('#signup-pw2').val();
				let ph_1 = $('#signup-number-first').find(":selected").text();
				let ph_2 = $('#signup-number-second').val();
				let ph_3 = $('#signup-number-third').val();
				let ph = ph_1 + ph_2 + ph_3;
				
				
				let email_id = $('#signup-email-id').val() + '@' + $('#signup-email-provider').val();
				let email_email_provider =  $('#signup-email-provider').val();
				let address_post_number = '('+$('#signup-address-postnumber').val() + ')';
				let address = $('#signup-address').val();
				let address_detail = $('#signup-address-detail').val();
				let isAgree = $('#isAgree').is(":checked");
				
				if(name === '' ) alert('이름을 입력해 주세요');
				else if (id === '') alert('아이디를 입력해 주세요');
				else if (pw === '' || pw2 === '' ) alert('비밀번호를 입력해 주세요');
				else if (pw !== pw2) alert('비밀번호가 맞지 않습니다.');
				else if (ph_2 === '' || ph_3 === '') alert('전화번호를 입력해 주세요');
				else if (email_id === '' || email_email_provider === '') alert('이메일을 입력해 주세요');
				else if (!validateEmail(email_id)) alert('올바른 이메일 주소가 아닙니다');
				else if (address_post_number === '' || address === '' || address_detail === '') alert('주소를 입력해 주세요');
				else if (isAgree === 'false') alert('이용약관에 동의해주세요');
				else {
					$.ajax({
						
						url: 'signup.do',
				        method: 'POST',
				        data: {
				        	'name' : name,
				       	    'id' : id,
				        	'pw' : pw,
				        	'ph' : ph_1 + ph_2 + ph+3,
				        	'email' : email_id,
				        	'address' : address_post_number + address + address_detail
				           
				        },
				        success : (response) => {
				        	
				        	location.href = '/';
						
				        }	      
					})
				}
			
				
				
				
			}
			
			function insertEmailProvider() 
			{
				$('#signup-email-provider').val($('#signup-email-provider-select').find(":selected").text());
			}
			
			 function validateEmail(email)
	        {
	            const regx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	            
	            if(regx.test(email)) return true;
	            else return false;
	        }
		
		</script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
    
    <body>
	    <div id="app" style="display:flex;">
    		<div id="signup-cover"></div>
    		<div id="signup-container">
	    		<div id="signup-wrap">
	    			<div>
	    				<h1>회원가입</h1>
						<div>
							<div>이름</div>
							<input id="signup-name"  type="text" style="font-size:20px;">
						</div>	
						
						<div>
							<div>아이디</div>
							<input id="signup-id" type="text" style="font-size:20px;">
						</div>		
						
						
						<div id="pw-container">
							<div>
								<div >비밀번호</div>
								<input id="signup-pw" type="password" style="font-size:20px;">
							</div>	
							
							<div>
								<div >비밀번호 확인</div>
								<input id="signup-pw2" type="password" style="font-size:20px;">
							</div>		
						</div>
						
						
						<div>
							<div id="signup-number">전화번호</div>
							<div>
								<select id="signup-number-first">
									<option>010</option>
									<option>011</option>
								</select>
								<input id="signup-number-secode" type="number" style="font-size:20px; width:80px;">
								-
								<input id="signup-number-third" type="number" style="font-size:20px; width:80px;">
							</div>
						</div>
						
						<div>
							<div >이메일</div>
							<input id="signup-email-id" type="text" style="font-size:20px; width:170px;">@
							<input id="signup-email-provider" type="text" style="font-size:20px; width:170px;">
							<select onchange="insertEmailProvider()" id="signup-email-provider-select">
								<option>직접 입력</option>
								<option>naver.com</option>
								<option>hanmail.net</option>
								<option>gmail.com</option>
							</select>
						</div>		
						<div>
							<div>주소</div>
							<div>
								<input id="signup-address-postnumber" type="text" id="sample6_postcode" placeholder="우편번호" style="height:50px; ">
								<input type="button" onclick="showDaumPostcode()" value="우편번호 찾기"><br>
								<input id="signup-address" type="text" id="sample6_address" placeholder="주소" style="height:50px; "><br>
								<input id="signup-address-detail" type="text" id="sample6_detailAddress" placeholder="상세주소" style="height:50px; ">
							</div>
						</div>
						
						<div>
							<input id="isAgree" type="checkbox">이용약관과 개인정보 제공에 동의합니다.
						</div>
						<div style="display: flex; justify-content: center;">
		               		<button class="default-button button-positive" onclick="signup()">회원가입</button>
		               		<button onclick="location.href='/'" class="default-button button-negative">취소</button>
             			</div>
	    		
	    			</div>
	    			
    			</div>
   				
	 				
   			</div>
		</div>
	
    </body>
</html>