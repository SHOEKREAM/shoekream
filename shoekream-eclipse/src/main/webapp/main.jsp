<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<!-- STYLE -->
<link rel="stylesheet" href="./css/style.css"> 

<!-- MAIN CONTENT -->
<main>
	<div id="search-container">
        <div>
            <input id="search-input" type="text" placeholder="검색어를 입력해 주세요" onKeypress="javascript:if(event.keyCode===13){search()}">
        </div>
    </div>
    <div id="brand-filter">
        <div class="filter-item" style="width: 80px; height: 80px; margin-right: 20px; text-align: center;">
            <img style="width: 50px; height: 50px;">
            <div>브랜드명</div>
        </div>
        <div class="filter-item" style="width: 80px; height: 80px; margin-right: 20px; text-align: center;">
            <img style="width: 50px; height: 50px;">
            <div>브랜드명</div>
        </div>

        <div class="filter-item" style="width: 80px; height: 80px; margin-right: 20px; text-align: center;">
            <img style="width: 50px; height: 50px;">
            <div>브랜드명</div>
        </div>

        <div class="filter-item" style="width: 80px; height: 80px; margin-right: 20px; text-align: center;">
            <img style="width: 50px; height: 50px;">
            <div>브랜드명</div>
        </div>

        <div class="filter-item" style="width: 80px; height: 80px; margin-right: 20px; text-align: center;">
            <img style="width: 50px; height: 50px;">
            <div>브랜드명</div>
        </div>

        <div class="filter-item" style="width: 80px; height: 80px; margin-right: 20px; text-align: center;">
            <img style="width: 50px; height: 50px;">
            <div>브랜드명</div>
        </div>
    </div>
    <div id="search-filter">
       <div>필터</div>
       <div style="width: 100%; height: 50px;"></div>
    </div>
    <div id="search-result" style="width: 100%; ">
        <div class="result-item" style="width: 200px; height: auto;">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto;">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>
        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>
        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        <div class="result-item" style="width: 200px; height: auto">
            <img class="result-item-cover" style="width: 200px; height: 200px; background-color: aqua;" > 
            <div class="result-item-info">
                <div class="info-validation">인증여부</div>
                <div class="info-brand">브랜드명</div>
                <div class="info-name">상품명</div>
                <div class="info-price">가격</div>
                <div class="info-wishcount">찜</div>
            </div>
        </div>

        
    </div>

</main>