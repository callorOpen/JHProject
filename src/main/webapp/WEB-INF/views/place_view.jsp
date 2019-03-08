<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/css/place_new.css'/>">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Nova+Flat" rel="stylesheet">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
		
	$('#mappop').click(function(){
			
		var link = $(this).attr("data-link-id")
		
		window.open(link);

	})
})
</script>
<style>
.star-rating { 
	width:205px; 
}   

.star-rating,.star-rating span { 
	display:inline-block; 
	height:39px; 
	overflow:hidden; 
	background:url("${pageContext.request.contextPath}/images/image_place/star.png") no-repeat;
	}

.star-rating span{ 
	background-position:left bottom; 
	line-height:0; 
	vertical-align:top;
}


</style>

<body>

<%@ include file="/WEB-INF/views/include/header.jspf" %>
<%@ include file="/WEB-INF/views/include/nav.jspf" %>

<div class="top_blank">
<p id="top_title"><span class="w3-xlarge w3-border-teal w3-bottombar">Spot List</span></p>
</div>

<table id="customers">
<tr class="table_header">
<th>Place</th>
<th>Summary</th>
<th>Rating</th>
<th>Location</th>
</tr>
<c:forEach items="${PLACE_LIST}" var="pVO" varStatus="i">
<tr>
<td><a href="javascript:void(0)"><img src="${pVO.p_image}" onmouseover="this.src='${pVO.p_image2}'" 
         onmouseout="this.src='${pVO.p_image}'" width="300" height="200" ></a></td>
<td><b>${pVO.p_name}</b><br/>${pVO.p_tel}</td>
<td><span class="star-rating"><span style="width: ${pVO.p_star}%;"></span>	</span></td>
<td><p style="text-align: center;">${pVO.p_city}</p><br/>
    <a id="mappop" href="javascript:void(0)" data-link-id="${pVO.p_map}">
    <img src="images/image_place/map.png" width="60px" style="margin-left: auto; margin-right: auto; display: block;"></a>
  </td>
</tr>
</c:forEach>

</table>

<div class="bottom_blank">
<p></p>
</div>

<%@ include file="/WEB-INF/views/include/footer.jspf" %>
</body>
</html>
