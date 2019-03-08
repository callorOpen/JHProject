<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
		href="<c:url value='/css/place_main.css'/>">
</head>
	
<body>


<%@ include file="/WEB-INF/views/include/header.jspf" %>
<%@ include file="/WEB-INF/views/include/nav.jspf" %>

<div class="division">
	
	<div class="div_place">
	<img src="images/image_place/jido.png" usemap="#001" />
	<map name="001">
		<area id="place_gyunggi" shape="circle" coords="108,114,55" href="place_gyunggi"/>
		<area id="place_gangwon" shape="circle" coords="211,92,60" href="place_gangwon"/>
		<area id="place_choongnam" shape="circle" coords="101,219,49" href="place_choongnam"/>
		<area id="place_choongbuk" shape="circle" coords="192,198,38" href="place_choongbuk"/>
		<area id="place_gyungbuk" shape="circle" coords="293,218,51" href="place_gyungbuk"/>
		<area id="place_junbuk" shape="circle" coords="146,303,40" href="place_junbuk"/>
		<area id="place_gyungnam" shape="rect" coords="210,301,360,392" href="place_gyungnam"/>
		<area id="place_junnam" shape="rect" coords="80,359,212,448" href="place_junnam"/>
	</map>
	</div>
	
</div>

<div class="division">
	<div class="div_place">
	<a id="place_jeju" href="place_jeju"><img src="images/image_place/jeju.png" /></a>
	</div>
</div>


<%@ include file="/WEB-INF/views/include/footer.jspf" %>
</body>
</html>
