<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib 
	uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<!DOCTYPE html>
<html>   	    
<style>
	fieldset{
		width:70%;
		margin:20px auto; /* 가로방향 중앙정렬 */
	}
	
	legend {
		font-size:12pt;
		font-weight: bold;
		color : #3d65ff;
	}
	
	.in-label {
		display: inline-block;
		width:20%;
		
		float:left;
		text-align: right;
		margin-right: 5px;
		padding:8px;
	}
	
	.in-box {
		padding:8px;
		margin:3px;
		display: inline-block;
		width:70%;
		border:1px solid #ccc;
	}
	
	.in-box:hover {
		background-color: #ddd;
		border:1px solid blue;
	}
	
	input:invalid {
		background-color: #ffdddd;
		border:2px solid red;
	}
	
	/* span 설정 */
	#userid_error {
		width:70%;
		color:red;
		font-weight: bold;
	}
	
	.userid_label {
		display: none;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$("#btn-join").click(function(){
		let c_userid = $("#c_userid").val()
		let c_title = $("#c_title").val()
		let c_text = $("#c_text").val()
		if(c_userid == "") {
			alert("id(email)을 반드시 입력하세요")
			$("#c_userid").focus();
			return false;
		}
		if(c_title == "") {
			alert("제목을 반드시 입력하세요")
			$("#c_title").focus()
			return false;
		}
		if(c_text == "") {
			alert("내용을 반드시 입력하세요")
			$("#c_text").focus()
			return false;
		}
	
		$.ajax({
			url : "<c:url value='/commu_wirte_sucess' />",
			method:"POST",
			data:$('form').serialize(),
		})
		alert("글작성이 완료되었습니다.")
		opener.location.reload()
		window.close();
		
	
	})
		
})


</script>	
<form action="<c:url value='/commu_write_sucess' />" 
		method="POST"
		 autocomplete="off">

	<fieldset>
	<legend>글쓰기</legend>
	<label  class="in-label" for="c_userid">회원ID</label>
	<input value="${LOGIN_INFO.m_userid}" readonly type="text" class="in-box" required
			placeholder="회원ID를 입력하세요"
			id="c_userid" name="c_userid"><br/>
			
	<label class="in-label userid_label"></label>
	<span id="userid_error" class="userid_label"></span>
			
	<label class="in-label" for="c_title">제목</label>
	<input type="text" class="in-box"
			id="c_title" name="c_title"><br/>
	
	<label class="in-label" for="c_image">이미지</label>
	<select class="in-box" id="c_image" name="c_image">
		<option value="/images/image_community/귀여운강아지1.jpg">1번 이미지</option>
		<option value="/images/image_community/귀여운강아지2.jpeg">2번 이미지</option>
		<option value="/images/image_community/귀여운강아지3.jpeg">3번 이미지</option>
		<option value="/images/image_community/귀여운강아지4.jpg">4번 이미지</option>
		<option value="/images/image_community/귀여운강아지5.jpg">5번 이미지</option>
		<option value="/images/image_community/귀여운강아지6.jpg">6번 이미지</option>
		<option value="/images/image_community/귀여운강아지7.jpg">7번 이미지</option>
		<option value="/images/image_community/귀여운강아지8.jpg">8번 이미지</option>
		<option value="/images/image_community/귀여운강아지9.jpg">9번 이미지</option>
		<option value="/images/image_community/귀여운강아지10.jpg">10번 이미지</option>
	</select><br/>
	
	<label class="in-label" for="c_text">내용</label>
	<input type="text" class="in-box"
			id="c_text" name="c_text"><br/>

	
	<label class="in-label" for="btn-join"></label>
	<button id="btn-join" type="button">글쓰기</button>
	</fieldset>
</form>
</html>