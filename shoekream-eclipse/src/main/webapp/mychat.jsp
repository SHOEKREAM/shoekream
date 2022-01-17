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
		<script src="./js/app.js"></script>
		<script src="./js/jquery-3.6.0.js"></script>
		<script>
			 $(document).ready(() => 
       {
           $('#chat-input').keydown((event) => 
           {
               if(event.keyCode == 13)
               { 
                   sendMessage();
                   //receiveMessage();
                }
           });
       });
		</script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css"/>
		
		
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
					<h1>나의 채팅</h1>
					<div id="mychat-container">
						<div id="mychat-list">
							<div class="mychat-list-item-container" >
								<div class="mychat-list-item mychat-info-item-1">
									<div style="width: 60px; height: 60px; background-color: black; border-radius: 100%"></div>
									<div id="mychat-info-container" style="  display: flex; align-items: center">
										<div style="width:margin-left: 10px; ">
											<div>dddd</div>
											<div>dsa</div>
										</div>
										
										<div onclick="removeChatItem(1)">
											<span class="material-icons">close</span>
										</div>
										
									</div>
								</div>
								
								
								
							</div>
						</div>
						
						<div id="mychat-wrap">
							<div id="chat">
							
								 <div id="chat-view">
	
					                <div class="msg-view">
					                    <div>
					                        
					                    </div>
					                    <div class="msg-content-notice">
					                        님이 입장하셨습니다
					                    </div>
					                </div>
					                
					            </div>
								<div style="display: flex; justify-content: center; background-color: rgb(241, 241, 241); ">
					                <div id="chat-input-container"  style="display: flex; padding: 10px 0;">
					                    <input id="chat-input" type="text">
					                    <button id="chat-send" onclick="sendMessage();" >입력</button>
					                </div>
					            </div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>