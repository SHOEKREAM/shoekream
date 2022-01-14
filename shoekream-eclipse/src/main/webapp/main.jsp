<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- SCRIPTS -->
<script src="./js/jquery-3.6.0.js"></script>

<!-- STYLE -->
<link rel="stylesheet" href="./css/style.css?ver=1.1"> 

<!-- MAIN CONTENT -->
<main>
	<div id="slider-container">
		<div style="width:100%; height:100%; display: flex; position: relative; align-items: center;">
			<div class="slider-controller" style="background-color: #f5f5f5;">
				<span class="material-icons" style="font-size: 50px; display: flex; justify-content: left"  >navigate_before</span>
			</div>
			<div style="width: 100%" class="slider-controller">
				<span class="material-icons" style="font-size: 50px; width:100%; display: flex;  justify-content: right">navigate_next</span>
			</div>
			
		</div>
	</div>
	<div id="search-container">
        <div style="width: 700px; height:50px; display:flex; border: none; border-bottom: solid black 2px;">
            <input id="search-input" style="width:666px; border: none; margin: 0 10px" type="text" placeholder="검색어를 입력해 주세요" onKeypress="javascript:if(event.keyCode===13){search()}" onkeyup="notifyStatusSearch()">
            <div id="input-clear-container" style="display: flex; align-items: center;" onclick="clearSearchText()">
                <span class="material-icons">close</span>
            </div>
        </div>
    </div>
    <div id="brand-filter-container">
        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">Dunk</div>
        </div>
        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">오트리</div>
        </div>

        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">에어포스</div>
        </div>

        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">발렌시아가</div>
        </div>

        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">Jordan 1</div>
        </div>

        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">Off-White</div>
        </div>
        
        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">마르지엘라</div>
        </div>
        
        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">뉴발란스</div>
        </div>
        
        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">야스히로</div>
        </div>
        
        <div class="filter-item" >
            <div class="fiter-item-cover"></div>
            <div class="fiter-item-brand">YEEZY</div>
        </div>
    </div>
    <div id="search-filter">
       <div>필터</div>
       <div style="width: 100%; height: 50px;"></div>
    </div>
    <div id="search-result" style="width: 100%; ">
        <div class="result-item" style="width: 272px; height: auto;">
            <div class="result-item-cover" style="width: 272px; height: 263px;"></div>
            <div class="result-item-info">
                <div class="info-validation">
               		<div>인증됨</div>
					<div><span class="material-icons">verified</span></div>
				</div>
                <div class="info-brand">Jordan</div>
                <div class="info-name">Jordan 1 Retro High OG ...</div>
                <div class="info-price">1,000,000원</div>
                <div class="info-wishcount">
					<span class="material-icons">bookmark_border</span>
					<div class="info-wishcount-count">1,100회</div>
				</div>
            </div>
		</div>	
		
    </div>

</main>