<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
	.viewlist:hover {
		cursor: pointer;
	}
	.invi {
		display: none;
	}
	.view {
		display: inline-block;
	}
</style>
<head>
</head>
<link rel="stylesheet"
		href=<c:url value="/css/community.css" /> >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	
	$(".viewlist").click(function(){
		let num = $(this).attr("data-num") // q1
		// $("#invi").find(data).css("display","inline-block")
		$("#invi" + num).toggleClass("view")
		
	})
	
})
</script>

<body>
<!-- 
  커뮤니티 게시판 beta
  페이지기능 넣어야함 각각 칼럼들 누르면 해당글로 이동
  다른 기타요소들 꾸미기
  DB연결하면 캡션부분에 제목과 날짜 작성자 넣어주기
-->
<%@ include file="/WEB-INF/views/include/header.jspf" %>
<%@ include file="/WEB-INF/views/include/nav.jspf" %>
<div id="columns">
  <div class="top10" >
    <h3 class="maintitle"><span class="txt_ko">자주 찾는 질문</span> TOP10</a></h3>
    <ul>
        <li>
            <a class="viewlist" data-num="1"><p class="num">Q1 - 1번 질문??</p></a>
        </li>
        <p id="invi1" class="invi">1번질문의 답변</p>
        
        <li>
           <a class="viewlist" data-num="2"><p class="num">Q2 - 2번 질문??</p></a>
        </li>
        <p id="invi2" class="invi">2번질문의 답변</p>
        
        <li>
           <a class="viewlist" data-num="3"><p class="num">Q3 - 3번 질문??</p></a>
        </li>
        <p id="invi3" class="invi">3번질문의 답변</p>
        
        <li>
            <a class="viewlist" data-num="4"><p class="num">Q4 - 4번 질문??</p></a>
        </li>
        <p id="invi4" class="invi">4번질문의 답변</p>
        
        <li>
            <a class="viewlist" data-num="5"><p class="num">Q5 - 5번 질문??</p></a>     
        </li>
        <p id="invi5" class="invi">5번질문의 답변</p>
        
        <li>
            <a class="viewlist" data-num="6"><p class="num">Q6 - 6번 질문??</p></a>
        </li>
        <p id="invi6" class="invi">6번질문의 답변</p>
        
        <li>
            <a class="viewlist" data-num="7"><p class="num">Q7 - 7번 질문??</p></a>
        </li>
        <p id="invi7" class="invi">7번질문의 답변</p>
        
        <li>
            <a class="viewlist" data-num="8"><p class="num">Q8 - 8번 질문??</p></a>
        </li>
        <p id="invi8" class="invi">8번질문의 답변</p>
        
        <li>
            <a class="viewlist" data-num="9"><p class="num">Q9 - 9번 질문??</p></a>    
        </li>
        <p id="invi9" class="invi">9번질문의 답변</p>

        <li>
            <a class="viewlist" data-num="10"><p class="num">Q10 - 10번 질문??</p></a>
        </li>
        <p id="invi10" class="invi">10번질문의 답변</p>

    </ul>
</div>

<div class="top10" style=" float: right;">
    <h3 class="maintitle"><span class="txt_ko">EVENT</span></h3>
    <ul>
        <li class="viewlist" data-num="11">
            <p class="num2">1번 이벤트</p>
        </li>
        <p id="invi11" class="invi">1번 이벤트의 답변</p>
        
        <li class="viewlist" data-num="12">
            <p class="num2">2번 이벤트</p>
        </li>
        <p id="invi12" class="invi">2번 이벤트의 답변</p>
        
        <li class="viewlist" data-num="13">
            <p class="num2">3번 이벤트</p>
        </li>
        <p id="invi13" class="invi">3번 이벤트의 답변</p>
        
        <li class="viewlist" data-num="14">
            <p class="num2">4번 이벤트</p>
        </li>
        <p id="invi14" class="invi">4번 이벤트의 답변</p>
        
        <li class="viewlist" data-num="15">
            <p class="num2">5번 이벤트</p>     
        </li>
        <p id="invi15" class="invi">5번 이벤트의 답변</p>
    </ul>
    <h3 class="maintitle"><span class="txt_ko">NEWS</span></h3>
    <ul>    
        <li class="viewlist" data-num="16">
            <p class="num2">1번 뉴스</p>
        </li>
        <p id="invi16" class="invi">1번 뉴스의 답변</p>
        
        <li class="viewlist" data-num="17">
            <p class="num2">2번 뉴스</p>
        </li>
        <p id="invi17" class="invi">2번 뉴스의 답변</p>
        
        <li class="viewlist" data-num="18">
            <p class="num2">3번 뉴스</p>
        </li>
        <p id="invi18" class="invi">3번 뉴스의 답변</p>
        
        <li class="viewlist" data-num="19">
            <p class="num2">4번 뉴스</p>    
        </li>
        <p id="invi19" class="invi">4번 뉴스의 답변</p>

        <li class="viewlist" data-num="20">
            <p class="num2">5번 뉴스</p>
        </li>
        <p id="invi20" class="invi">5번 뉴스의 답변</p>

    </ul>
</div>
</div>



<%@ include file="/WEB-INF/views/include/footer.jspf" %>

</body>
</html>