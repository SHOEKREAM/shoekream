<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- SCRIPTS -->
<script src="./js/jquery-3.6.0.js"></script>
<script>

	window.onload = $.ajax({
		url: 'brand.do',
        method: 'GET',
        success : (response) => {
        	
			let data = response.data;
			let category = $('#brand-filter-container');
			for(brand in data)
			{
				category.append('<div class="filter-item" >'
	            +'<div class="filter-item-cover" style="background-image:url('+data[brand].cover+');"></div>'
	            +'<div class="filter-item-brand">'+data[brand].name+'</div></div>'
	            );
				
			}
        }	     
	});
	

	$(window).scroll(() => { 
	   if($(window).scrollTop() == $(document).height() - $(window).height())
	   { 
		   $.ajax({
			   url: 'itemall.do',
			    method: 'GET',
			    success : (response) => 
				{
			    	url: 'itemall.do'
					let data = response.data;
					let grid = $('#search-result');
					
					console.log(data);
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
									+	'<div><span class="material-icons">verified</span></div>'
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
	});

	
	
	function go(position)
	{
		location.href='/item?item='+position
	}
</script>

<script>
	window.onload = $.ajax(
	{
		url: 'itemall.do',
	    method: 'GET',
	    success : (response) => 
		{
	    	url: 'itemall.do'
			let data = response.data;
			let grid = $('#search-result');

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
				            +    '<div class="info-price">'+convertToMonetaryUnit(data[item].price)+'</div>'
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
				
	function search(iid)
	{
		let tmp = $('#search-input').val;
 		if(tmp.length > 0) alert('검색어를 입력해 주세요');
 		else location.href='./search?search='+ $('#search-input').val();
	}
</script>

<!-- STYLE -->
<link rel="stylesheet" href="./css/style.css"> 

<!-- MAIN CONTENT -->
<main>

	<div id="slider-container" >
		<div id="slider">
			
		</div>
	</div>
	<!-- 
		<div id="slider-container">
			<div style="width:100%; height:100%; display: flex; position: relative; align-items: center;">
				<div class="slider-controller" style="background-color: #f5f5f5;">
					<span class="material-icons" style="font-size: 50px; display: flex; justify-content: left"  >navigate_before</span>
				</div>
				<div style="width: 100%" class="slider-controller">
					<span class="material-icons" style="font-size: 50px; width:100%; display: flex;  justify-content: right">navigate_next</span>
				</div>
				
				<div>
				
				</div>
			</div>
		</div>
	 -->
	<div id="search-container" style="margin-top: 40px">
        <div style="width: 700px; height:50px; display:flex; border: none; border-bottom: solid black 2px;">
            <input id="search-input" style="width:666px; border: none; margin: 0 10px" type="text" placeholder="검색어를 입력해 주세요" onKeypress="javascript:if(event.keyCode===13){search()}" onkeyup="notifyStatusSearch()">
            <div id="input-clear-container" style="display: flex; align-items: center;" onclick="clearSearchText()">
                <span class="material-icons">close</span>
            </div>
        </div>
    </div>
    <div id="brand-filter-container">
    </div>
    <div id="search-filter">
       <div>필터</div>
       <div style="width: 100%; height: 50px;"></div>
    </div>
    <div id="search-result" style="width: 100%; ">
		
		
    </div>

</main>