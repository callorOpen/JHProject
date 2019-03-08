<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib 
	uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<!DOCTYPE html>
<html>    
<style>
	fieldset{
		width:90%;
		margin:20px auto; /* 가로방향 중앙정렬 */
	}
	
	legend {
		font-size:12pt;
		font-weight: bold;
		color : #3d65ff;
	}
	
	.in-box {
		padding:8px;
		margin:3px;
		border:1px solid #ccc;
	}

	.width-90 {
		display: inline-block;
		width:90%;
		margin:10px auto;
	}

	.in-box:hover {
		background-color: #ddd;
		border:1px solid blue;
	}
	
	input:invalid {
		background-color: #ffdddd;
		border:2px solid red;
	}

	.btn-login {
		background-color: green;
		color:yellow;
		font-size : 20px;
		font-weight: bold;
	}
	
	.error-box {
		display: none;
	}
	
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$("#btn-login").click(function(){
		let m_userid = $("#m_userid").val()
		let m_password = $("#m_password").val()
		if(m_userid == "") {
			alert("id(email)을 반드시 입력하세요")
			$("#m_userid").focus();
			return false;
		}
		if(m_password == "") {
			alert("비밀번호를 반드시 입력하세요")
			$("#m_password").focus()
			return false;
		}
		$("form").submit()
		
	})
	
	// 컨트롤러에서 보낸 LOGIN_MSG 변수에 에 문자열 FAIL이 담겨 있으면
	if("${LOGIN_MSG}" == "FAIL") {
		$(".error-box").css("display","inline-block")
		$("#error-msg").html("<b><font color=red> 존재하지않는 아이디거나 비밀번호 입니다. </font></b>")
	}
	if("${LOGIN_MSG}" == "ADMIN FAIL") {
		$(".error-box").css("display","inline-block")
		$("#error-msg").html("<b><font color=red>" + "관리자로 로그인하세요" + "</font></b>")
	}
	if("${LOGIN_MSG}" == "SUCCESS") {
		alert("${LOGIN_INFO.m_name} 님 환영합니다.")
		opener.location.reload()
		window.close();
	}
	
	
})

</script>	
<form action="<c:url value='/login-check' />" 
		method="POST"
		 autocomplete="off">

	<fieldset>
	<legend>로그인</legend>

	<h3 id="error-msg" class="error-box width-90"></h3>
	<input type="text" class="in-box width-90" required
			placeholder="회원ID를 입력하세요"
			id="m_userid" name="m_userid"><br/>
			
	<input type="password" class="in-box width-90"
			placeholder="비밀번호를 입력하세요"
			id="m_password" name="m_password"><br/>
		
	<button id="btn-login" type="button" 
		class="width-90 btn-login">로그인</button>
	</fieldset>
</form>
</html>