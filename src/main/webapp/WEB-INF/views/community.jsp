<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<link rel="stylesheet"
		href=<c:url value="/css/community.css" /> >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$('.snspop').click(function(){
			
			let key = $(this).attr("data-key")
			var popupX = (window.screen.width / 2) - (600 / 2);
			var popupY= (window.screen.height /2) - (800 / 2);
			window.open("<c:url value='/snspop' />"+"?key="+key, "snspop",
            "width = 600, height = 800, left="+ popupX + ", top="+ popupY + ", resizable = no, status = no");
			
		})
		
		$('.write').click(function(){
			
			var popupX = (window.screen.width / 2) - (800 / 2);
			var popupY= (window.screen.height /2) - (400 / 2);
			window.open("<c:url value='/commu_write' />", "write",
            "width = 800, height = 400, left="+ popupX + ", top="+ popupY + ", resizable = no, status = no");
			
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
	
    <div class="columns">
    <c:forEach items="${COMMU_LIST}" var="cVO" varStatus="i">
	    <a class="snspop" href="javascript:void(0)" data-key="${cVO.c_num}">
	      <figure>
	        <img src="<c:url value="${cVO.c_image}" />">
	        <figcaption>${cVO.c_title}</figcaption>
	      </figure>
	    </a>
    </c:forEach>
    </div>
    
    <a class="write" href="javascript:void(0)">글쓰기</a>
     


<%@ include file="/WEB-INF/views/include/footer.jspf" %>
</body>
</html>