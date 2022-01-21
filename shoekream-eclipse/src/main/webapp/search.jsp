<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    
<%
	String search = request.getParameter("seasrch");
%>
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
		
			if('<%= search%>' !== '')
			{
				
				window.onload = $.ajax(
				{
					url: 'search.do',
					method: 'GET',
					data: {'search' : <%= search %> },
				    success : (response) => 
					{
						let data = response.data;
						let grid = $('#search-result');
						grid.empty();

						for(item in data)
						{
							if(data[item].isCertified === '0')
							{
								grid.append('<div class="result-item"'
									 	+ 'style="width: 272px; height: auto; border-radius:20px; overflow: hidden;" onclick="go('+data[item].id+')">'
							            +'<div class="result-item-cover" style="width: 272px; height: 263px; background-image:url('+data[item].cover+'); background-size: cover;"></div>'
							            +'<div class="result-item-info">'
							            +   '<div class="info-validation">'
							            +  		'<div>미인증</div>'
										+	'</div>'
							            //+    '<div class="info-brand">Jordan</div>'
							            +    '<div class="info-name" style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">'+data[item].title+'</div>'
							            +    '<div class="info-price">'+convertToMonetaryUnit(data[item]).price+'</div>'
							            +    '<div class="info-wishcount">'
										+		'<span class="material-icons">bookmark_border</span>'
										+		'<div class="info-wishcount-count">'+data[item].like_count+'</div>'
										+	'</div></div></div>');
							} else {
								grid.append('<div class="result-item"'
									 	+ 'style="width: 272px; height: auto; border-radius:20px; overflow: hidden;" onclick="go('+data[item].id+')">'
							            +'<div class="result-item-cover" style="width: 272px; height: 263px; background-image:url('+data[item].cover+'); background-size: cover;"></div>'
							            +'<div class="result-item-info">'
							            +   '<div class="info-validation">'
							            +  		'<div>인증됨</div>'
										+	'<div><span class="material-icons">verified</span></div>'
										+	'</div>'
							            //+    '<div class="info-brand">Jordan</div>'
							            +    '<div class="info-name" style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">'+data[item].title+'</div>'
							            +    '<div class="info-price">'+convertToMonetaryUnit(data[item].price)+'</div>'
							            +    '<div class="info-wishcount">'
										+		'<span class="material-icons">bookmark_border</span>'
										+		'<div class="info-wishcount-count">'+data[item].like_count+'</div>'
										+	'</div></div></div>');
							}
						}
				    }
				});
			}
			
				
				
			function search() 
			{
				let tmp = $('#search-input').val;
		 		if(tmp.length > 0) alert('검색어를 입력해 주세요');
		 		else {
		 			window.onload = $.ajax(
		 					{
		 						url: 'search.do',
		 						method: 'GET',
		 						data: {'search' : <%= search %> },
		 					    success : (response) => 
		 						{
		 							let data = response.data;
		 							let grid = $('#search-result');

		 							grid.empty();
		 							for(item in data)
		 							{
		 								if(data[item].isCertified === '0')
		 								{
		 									grid.append('<div class="result-item"'
		 										 	+ 'style="width: 272px; height: auto; border-radius:20px; overflow: hidden;" onclick="go('+data[item].id+')">'
		 								            +'<div class="result-item-cover" style="width: 272px; height: 263px; background-image:url('+data[item].cover+'); background-size: cover;"></div>'
		 								            +'<div class="result-item-info">'
		 								            +   '<div class="info-validation">'
		 								            +  		'<div>미인증</div>'
		 								
		 											+	'</div>'
		 								            //+    '<div class="info-brand">Jordan</div>'
		 								            +    '<div class="info-name" style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">'+data[item].title+'</div>'
		 								            +    '<div class="info-price">'+convertToMonetaryUnit(data[item]).price+'</div>'
		 								            +    '<div class="info-wishcount">'
		 											+		'<span class="material-icons">bookmark_border</span>'
		 											+		'<div class="info-wishcount-count">'+data[item].like_count+'</div>'
		 											+	'</div></div></div>');
		 								} else {
		 									grid.append('<div class="result-item"'
		 										 	+ 'style="width: 272px; height: auto; border-radius:20px; overflow: hidden;" onclick="go('+data[item].id+')">'
		 								            +'<div class="result-item-cover" style="width: 272px; height: 263px; background-image:url('+data[item].cover+'); background-size: cover;"></div>'
		 								            +'<div class="result-item-info">'
		 								            +   '<div class="info-validation">'
		 								            +  		'<div>인증됨</div>'
		 											+	'<div><span class="material-icons">verified</span></div>'
		 											+	'</div>'
		 								            //+    '<div class="info-brand">Jordan</div>'
		 								            +    '<div class="info-name" style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">'+data[item].title+'</div>'
		 								            +    '<div class="info-price">'+convertToMonetaryUnit(data[item].price)+'</div>'
		 								            +    '<div class="info-wishcount">'
		 											+		'<span class="material-icons">bookmark_border</span>'
		 											+		'<div class="info-wishcount-count">'+data[item].like_count+'</div>'
		 											+	'</div></div></div>');
		 								}
		 							}
		 					    }
		 				
		 					});
	 			}
			}
			
			function go(position)
			{
				location.href='/item?item='+position
			}
		</script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		
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
					<h2>#검색</h2>
					<div id="search-container" >
				        <div style="width: 700px; height:50px; display:flex; border: none; border-bottom: solid black 2px;">
				            <input id="search-input" style="width:666px; border: none; margin: 0 10px" type="text" placeholder="검색어를 입력해 주세요" onKeypress="javascript:if(event.keyCode===13){search()}" onkeyup="notifyStatusSearch()">
				            <div id="input-clear-container" style="display: flex; align-items: center;" onclick="clearSearchText()">
				                <span class="material-icons">close</span>
				            </div>
				        </div>
				    </div>
				    
				    <div id="search-result" style="width: 100%; margin-top:40px ">
				    </div>
				</div>
				
				<!-- Footer -->
				<jsp:include page="./footer.jsp"/>
			</div>
		</div>
	</body>
</html>