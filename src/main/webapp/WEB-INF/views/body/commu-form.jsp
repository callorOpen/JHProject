<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" 
	content="width=device-width,initial-scale=1">
<meta charset="UTF-8">
<title>${COMMU_INFO.c_title}</title>
</head>
<body>
	<p>${COMMU_INFO.c_userid}</p>
	<a>
        <img src="<c:url value="${COMMU_INFO.c_image}" />">
        <a>${COMMU_INFO.c_title}</a>
    </a>
	<p>${COMMU_INFO.c_text}</p>
	<p>${COMMU_INFO.c_time}</p>
</body>
</html>