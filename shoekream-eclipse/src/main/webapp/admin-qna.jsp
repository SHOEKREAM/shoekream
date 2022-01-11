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
	    <script src="js/jquery-3.6.0.js"></script>
		
		<!-- STYLE -->
		<link rel="stylesheet" href="./css/style.css">
		<style>
			#tr
	        {
	            border-bottom:1px solid #ADADAD; 
	            padding-top:30px;
	        }
	        img
	        {
	            opacity : 1;
	        }
		</style>
		
		<!--INFORMATION -->
		<title>SHOEKREAM - 한정판 중고 거래</title>
	</head>
    
    <body>
    	<!-- 엔터 클릭시 이동 -->
            <form name="admin" id="admin" method="post" action="noticeok.html">
            <!-- 엔터 클릭시 이동 -->	
                
                <table border="0">
                    
                        <!-- 제목 -->
                    <table style="padding-top: 100px" width="1200px" align="center">
                        <tr>
                            <td align="center" colspan="6" style="font-size: 30pt;">문의관리</td>
                        </tr>
                        <!-- 제목 -->
                        
                        <!-- 검색 하기 -->
                        <tr>	
                            <td colspan="6" style="padding-top: 30px">
                                <div>
                                    <input type="text" size="60" placeholder="검색"> 
                                    <button type="button" class="btm_image" id="img_btn"><img style="width: 20x; height: 20px; padding-top: 3px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo_8Cj2y_z5wDfyOkApFGToiH3ckC5kBKIqw&usqp=CAU">
                                </div>
                            </td>
                        </tr>
                        <!-- 검색 하기 -->
                        
                        <!-- 게시판 글목록 -->
                        <tr style="trpadding-top:30px;">
                            <td id="tr" width="70px" height="30px">번호</td>
                            <td id="tr" width="120px">구분</td>
                            <td id="tr">제목</td>
                            <td id="tr" width="150px">문의자</td>
                            <td id="tr" width="150px">문의날짜</td>
                            <td id="tr" width="90px">답변여부</td>
                        </tr>
                        <tr>
                            <td height="40px">1</td>
                            <td>상품문의</td>
                            <td><a href="#">상품 문의요?</a></td>
                            <td>acs123</td>
                            <td>2022-01-06</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td height="40px">2</td>
                            <td>상품문의</td>
                            <td>상품 문의요?</td>
                            <td>acs123</td>
                            <td>2022-01-06</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td height="40px">3</td>
                            <td>상품문의</td>
                            <td>상품 문의요?</td>
                            <td>acs123</td>
                            <td>2022-01-06</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td height="40px">4</td>
                            <td>상품문의</td>
                            <td>상품 문의요?</td>
                            <td>acs123</td>
                            <td>2022-01-06</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td height="40px">5</td>
                            <td>상품문의</td>
                            <td>상품 문의요?</td>
                            <td>acs123</td>
                            <td>2022-01-06</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td height="40px">6</td>
                            <td>상품문의</td>
                            <td>상품 문의요?</td>
                            <td>acs123</td>
                            <td>2022-01-06</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td height="40px">7</td>
                            <td>상품문의</td>
                            <td>상품 문의요?</td>
                            <td>acs123</td>
                            <td>2022-01-06</td>
                            <td>O</td>
                        </tr>
                        <!-- 게시판 글목록 -->
                        
                    </table>
                </table>
            </form>
    </body>
</html>